class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/gsutil_notification.cwl
inputs:
- id: specify_type_filter
  doc: 'Specify an event type filter for this notification config. Cloud Storage will
    only send notifications of this type. You may specify this parameter multiple
    times to allow multiple event types. If not specified, Cloud Storage will send
    notifications for all event types. The valid types are: OBJECT_FINALIZE - An object
    has been created. OBJECT_METADATA_UPDATE - The metadata of an object has changed.
    OBJECT_DELETE - An object has been permanently deleted. OBJECT_ARCHIVE - A live
    Cloud Storage object has been archived.'
  type: boolean
  inputBinding:
    prefix: -e
- id: specifies_payload_format
  doc: Specifies the payload format of notification messages. Must be either "json"
    for a payload matches the object metadata for the JSON API, or "none" to specify
    no payload at all. In either case, notification details are available in the message
    attributes.
  type: boolean
  inputBinding:
    prefix: -f
- id: specifies_keyvalue_attribute
  doc: Specifies a key:value attribute that will be appended to the set of attributes
    sent to Cloud Pub/Sub for all events associated with this notification config.
    You may specify this parameter multiple times to set multiple attributes.
  type: boolean
  inputBinding:
    prefix: -m
- id: specifies_filter_send
  doc: Specifies a prefix path filter for this notification config. Cloud Storage
    will only send notifications for objects in this bucket whose names begin with
    the specified prefix.
  type: boolean
  inputBinding:
    prefix: -p
- id: skips_creation_assignment
  doc: Skips creation and permission assignment of the Cloud Pub/Sub topic. This is
    useful if the caller does not have permission to access the topic in question,
    or if the topic already exists and has the appropriate publish permission assigned.
  type: boolean
  inputBinding:
    prefix: -s
- id: cloud_pubsub_topic
  doc: The Cloud Pub/Sub topic to which notifications should be sent. If not specified,
    this command will choose a topic whose project is your default project and whose
    ID is the same as the Cloud Storage bucket name.
  type: boolean
  inputBinding:
    prefix: -t
outputs: []
cwlVersion: v1.1
baseCommand:
- gsutil
- notification
