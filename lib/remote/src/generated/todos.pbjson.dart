///
//  Generated code. Do not modify.
//  source: todos.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use emptyDescriptor instead')
const Empty$json = const {
  '1': 'Empty',
};

/// Descriptor for `Empty`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List emptyDescriptor = $convert.base64Decode('CgVFbXB0eQ==');
@$core.Deprecated('Use todoDescriptor instead')
const Todo$json = const {
  '1': 'Todo',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 5, '10': 'id'},
    const {'1': 'title', '3': 2, '4': 1, '5': 9, '10': 'title'},
    const {'1': 'description', '3': 3, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'isCompleted', '3': 4, '4': 1, '5': 8, '10': 'isCompleted'},
  ],
};

/// Descriptor for `Todo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todoDescriptor = $convert.base64Decode('CgRUb2RvEg4KAmlkGAEgASgFUgJpZBIUCgV0aXRsZRgCIAEoCVIFdGl0bGUSIAoLZGVzY3JpcHRpb24YAyABKAlSC2Rlc2NyaXB0aW9uEiAKC2lzQ29tcGxldGVkGAQgASgIUgtpc0NvbXBsZXRlZA==');
@$core.Deprecated('Use todosDescriptor instead')
const Todos$json = const {
  '1': 'Todos',
  '2': const [
    const {'1': 'todos', '3': 1, '4': 3, '5': 11, '6': '.Todo', '10': 'todos'},
  ],
};

/// Descriptor for `Todos`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List todosDescriptor = $convert.base64Decode('CgVUb2RvcxIbCgV0b2RvcxgBIAMoCzIFLlRvZG9SBXRvZG9z');
