class: CommandLineTool
id: gsutil_notification.cwl
inputs:
- id: in_specify_type_filter
  doc: "Specify an event type filter for this notification config. Cloud\nStorage\
    \ will only send notifications of this type. You may specify\nthis parameter multiple\
    \ times to allow multiple event types. If not\nspecified, Cloud Storage will send\
    \ notifications for all event\ntypes. The valid types are:\nOBJECT_FINALIZE -\
    \ An object has been created.\nOBJECT_METADATA_UPDATE - The metadata of an object\
    \ has changed.\nOBJECT_DELETE - An object has been permanently deleted.\nOBJECT_ARCHIVE\
    \ - A live Cloud Storage object has been archived."
  type: boolean
  inputBinding:
    prefix: -e
- id: in_specifies_format_beeither
  doc: "Specifies the payload format of notification messages. Must be\neither \"\
    json\" for a payload matches the object metadata for the\nJSON API, or \"none\"\
    \ to specify no payload at all. In either case,\nnotification details are available\
    \ in the message attributes."
  type: boolean
  inputBinding:
    prefix: -f
- id: in_specifies_keyvalue_attribute
  doc: "Specifies a key:value attribute that will be appended to the set\nof attributes\
    \ sent to Cloud Pub/Sub for all events associated with\nthis notification config.\
    \ You may specify this parameter multiple\ntimes to set multiple attributes."
  type: boolean
  inputBinding:
    prefix: -m
- id: in_specifies_prefix_filter
  doc: "Specifies a prefix path filter for this notification config. Cloud\nStorage\
    \ will only send notifications for objects in this bucket\nwhose names begin with\
    \ the specified prefix."
  type: boolean
  inputBinding:
    prefix: -p
- id: in_skips_creation_permission
  doc: "Skips creation and permission assignment of the Cloud Pub/Sub topic.\nThis\
    \ is useful if the caller does not have permission to access\nthe topic in question,\
    \ or if the topic already exists and has the\nappropriate publish permission assigned."
  type: boolean
  inputBinding:
    prefix: -s
- id: in_cloud_pubsub_topic
  doc: "The Cloud Pub/Sub topic to which notifications should be sent. If\nnot specified,\
    \ this command will choose a topic whose project is\nyour default project and\
    \ whose ID is the same as the Cloud Storage\nbucket name."
  type: boolean
  inputBinding:
    prefix: -t
- id: in_projects_slash_slash_buckets_slash_example_bucket_slash_notification_configs_slash_one
  doc: OPTIONS
  type: long
  inputBinding:
    position: 0
- id: in_generated_dot
  doc: The optional token parameter can be used to validate notifications events.
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- gsutil
- notification
