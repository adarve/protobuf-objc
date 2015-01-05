// Generated by the protocol buffer compiler.  DO NOT EDIT!

#import "Unittest_import.pb.h"
// @@protoc_insertion_point(imports)

@implementation UnittestImportRoot
static PBExtensionRegistry* extensionRegistry = nil;
+ (PBExtensionRegistry*) extensionRegistry {
  return extensionRegistry;
}

+ (void) initialize {
  if (self == [UnittestImportRoot class]) {
    PBMutableExtensionRegistry* registry = [PBMutableExtensionRegistry registry];
    [self registerAllExtensions:registry];
    [UnittestImportPublicRoot registerAllExtensions:registry];
    extensionRegistry = registry;
  }
}
+ (void) registerAllExtensions:(PBMutableExtensionRegistry*) registry {
}
@end

BOOL ImportEnumIsValidValue(ImportEnum value) {
  switch (value) {
    case ImportEnumImportFoo:
    case ImportEnumImportBar:
    case ImportEnumImportBaz:
      return YES;
    default:
      return NO;
  }
}
@interface ImportMessage ()
@property SInt32 d;
@end

@implementation ImportMessage

- (BOOL) hasD {
  return !!hasD_;
}
- (void) setHasD:(BOOL) value_ {
  hasD_ = !!value_;
}
@synthesize d;
- (instancetype) init {
  if ((self = [super init])) {
    self.d = 0;
  }
  return self;
}
static ImportMessage* defaultImportMessageInstance = nil;
+ (void) initialize {
  if (self == [ImportMessage class]) {
    defaultImportMessageInstance = [[ImportMessage alloc] init];
  }
}
+ (ImportMessage*) defaultInstance {
  return defaultImportMessageInstance;
}
- (ImportMessage*) defaultInstance {
  return defaultImportMessageInstance;
}
- (BOOL) isInitialized {
  return YES;
}
- (void) writeToCodedOutputStream:(PBCodedOutputStream*) output {
  if (self.hasD) {
    [output writeInt32:1 value:self.d];
  }
  [self.unknownFields writeToCodedOutputStream:output];
}
- (SInt32) serializedSize {
  __block SInt32 size_ = memoizedSerializedSize;
  if (size_ != -1) {
    return size_;
  }

  size_ = 0;
  if (self.hasD) {
    size_ += computeInt32Size(1, self.d);
  }
  size_ += self.unknownFields.serializedSize;
  memoizedSerializedSize = size_;
  return size_;
}
+ (ImportMessage*) parseFromData:(NSData*) data {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromData:data] build];
}
+ (ImportMessage*) parseFromData:(NSData*) data extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromData:data extensionRegistry:extensionRegistry] build];
}
+ (ImportMessage*) parseFromInputStream:(NSInputStream*) input {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromInputStream:input] build];
}
+ (ImportMessage*) parseFromInputStream:(NSInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ImportMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromCodedInputStream:input] build];
}
+ (ImportMessage*) parseFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  return (ImportMessage*)[[[ImportMessage builder] mergeFromCodedInputStream:input extensionRegistry:extensionRegistry] build];
}
+ (ImportMessageBuilder*) builder {
  return [[ImportMessageBuilder alloc] init];
}
+ (ImportMessageBuilder*) builderWithPrototype:(ImportMessage*) prototype {
  return [[ImportMessage builder] mergeFrom:prototype];
}
- (ImportMessageBuilder*) builder {
  return [ImportMessage builder];
}
- (ImportMessageBuilder*) toBuilder {
  return [ImportMessage builderWithPrototype:self];
}
- (void) writeDescriptionTo:(NSMutableString*) output withIndent:(NSString*) indent {
  if (self.hasD) {
    [output appendFormat:@"%@%@: %@\n", indent, @"d", [NSNumber numberWithInteger:self.d]];
  }
  [self.unknownFields writeDescriptionTo:output withIndent:indent];
}
- (BOOL) isEqual:(id)other {
  if (other == self) {
    return YES;
  }
  if (![other isKindOfClass:[ImportMessage class]]) {
    return NO;
  }
  ImportMessage *otherMessage = other;
  return
      self.hasD == otherMessage.hasD &&
      (!self.hasD || self.d == otherMessage.d) &&
      (self.unknownFields == otherMessage.unknownFields || (self.unknownFields != nil && [self.unknownFields isEqual:otherMessage.unknownFields]));
}
- (NSUInteger) hash {
  __block NSUInteger hashCode = 7;
  if (self.hasD) {
    hashCode = hashCode * 31 + [[NSNumber numberWithInteger:self.d] hash];
  }
  hashCode = hashCode * 31 + [self.unknownFields hash];
  return hashCode;
}
@end

@interface ImportMessageBuilder()
@property (strong) ImportMessage* result;
@end

@implementation ImportMessageBuilder
@synthesize result;
- (instancetype) init {
  if ((self = [super init])) {
    self.result = [[ImportMessage alloc] init];
  }
  return self;
}
- (PBGeneratedMessage*) internalGetResult {
  return result;
}
- (ImportMessageBuilder*) clear {
  self.result = [[ImportMessage alloc] init];
  return self;
}
- (ImportMessageBuilder*) clone {
  return [ImportMessage builderWithPrototype:result];
}
- (ImportMessage*) defaultInstance {
  return [ImportMessage defaultInstance];
}
- (ImportMessage*) build {
  [self checkInitialized];
  return [self buildPartial];
}
- (ImportMessage*) buildPartial {
  ImportMessage* returnMe = result;
  self.result = nil;
  return returnMe;
}
- (ImportMessageBuilder*) mergeFrom:(ImportMessage*) other {
  if (other == [ImportMessage defaultInstance]) {
    return self;
  }
  if (other.hasD) {
    [self setD:other.d];
  }
  [self mergeUnknownFields:other.unknownFields];
  return self;
}
- (ImportMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input {
  return [self mergeFromCodedInputStream:input extensionRegistry:[PBExtensionRegistry emptyRegistry]];
}
- (ImportMessageBuilder*) mergeFromCodedInputStream:(PBCodedInputStream*) input extensionRegistry:(PBExtensionRegistry*) extensionRegistry {
  PBUnknownFieldSetBuilder* unknownFields = [PBUnknownFieldSet builderWithUnknownFields:self.unknownFields];
  while (YES) {
    SInt32 tag = [input readTag];
    switch (tag) {
      case 0:
        [self setUnknownFields:[unknownFields build]];
        return self;
      default: {
        if (![self parseUnknownField:input unknownFields:unknownFields extensionRegistry:extensionRegistry tag:tag]) {
          [self setUnknownFields:[unknownFields build]];
          return self;
        }
        break;
      }
      case 8: {
        [self setD:[input readInt32]];
        break;
      }
    }
  }
}
- (BOOL) hasD {
  return result.hasD;
}
- (SInt32) d {
  return result.d;
}
- (ImportMessageBuilder*) setD:(SInt32) value {
  result.hasD = YES;
  result.d = value;
  return self;
}
- (ImportMessageBuilder*) clearD {
  result.hasD = NO;
  result.d = 0;
  return self;
}
@end


// @@protoc_insertion_point(global_scope)
