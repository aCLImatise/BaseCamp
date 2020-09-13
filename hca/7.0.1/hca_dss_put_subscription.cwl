class: CommandLineTool
id: ../../../hca_dss_put_subscription.cwl
inputs:
- id: in_callback_url
  doc: ''
  type: string
  inputBinding:
    prefix: --callback-url
- id: in_replica
  doc: ''
  type: string
  inputBinding:
    prefix: --replica
- id: in_attachments
  doc: "The set of bundle metadata items to be included in the payload of a notification\
    \ request to a subscription endpoint. Each property in this object represents\
    \ an attachment to the notification payload. Each attachment will be a child property\
    \ of the `attachments` property of the payload. The name of such a child property\
    \ can be chosen freely provided it does not start with an underscore.\nFor example,\
    \ if the subscription is\n```\n{\n\"attachments\": {\n\"taxon\": {\n\"type\":\
    \ \"jmespath\",\n\"expression\": \"files.biomaterial_json.biomaterials[].content.biomaterial_core.ncbi_taxon_id[]\"\
    \n}\n}\n}\n```\nthe corresponding notification payload will contain the following\
    \ entry\n```\n\"attachments\": {\n\"taxon\": [9606, 9606]\n}\n```\nIf a general\
    \ error occurs during the processing of attachments, the notification will be\
    \ sent with `attachments` containing only the reserved `_errors` attachment containing\
    \ a string describing the error. If an error occurs during the processing of a\
    \ specific attachment, the notification will be sent with all successfully processed\
    \ attachments and additionally the `_errors` attachment containing an object with\
    \ one property for each failed attachment. For example,\n```\n\"attachments\"\
    : {\n\"taxon\": [9606, 9606]\n\"_errors\" {\n\"biomaterial\": \"Some error occurred\"\
    \n}\n}\n```\nThe value of the `attachments` property must be less than or equal\
    \ to 128 KiB in size when serialized to JSON and encoded as UTF-8. If it is not,\
    \ the notification will be sent with\n\"attachments\": {\n\"_errors\": \"Attachments\
    \ too large (131073 bytes)\"\n}"
  type: long
  inputBinding:
    prefix: --attachments
- id: in_encoding
  doc: "The MIME type describing the encoding of the request body * `application/json`\
    \ - the HTTP request body is the notification payload as JSON * `multipart/form-data`\
    \ - the HTTP request body is a list of form fields, each consisting of a name\n\
    and a corresponding value. See https://tools.ietf.org/html/rfc7578 for details\
    \ on this encoding.\nThe actual notification payload will be placed as JSON into\
    \ a field of the name specified via\n`payload_form_field`."
  type: string
  inputBinding:
    prefix: --encoding
- id: in_es_query
  doc: An Elasticsearch query for restricting the set of bundles for which the subscriber
    is notified. The subscriber will only be notified for newly indexed bundles that
    match the given query. If this parameter is present the subscription will be of
    type `elasticsearch`, otherwise it will be of type `jmespath`.
  type: string
  inputBinding:
    prefix: --es-query
- id: in_form_fields
  doc: "A collection of static form fields to be supplied in the request body, alongside\
    \ the actual notification payload. The value of each field must be a string. For\
    \ example, if the subscriptions has this property set to `{\"foo\" : \"bar\"}`,\
    \ the corresponding notification HTTP request body will consist of a multipart\
    \ frame with two frames,\n```\n----------------2769baffc4f24cbc83ced26aa0c2f712\n\
    Content-Disposition: form-data; name=\"foo\"\nbar\n----------------2769baffc4f24cbc83ced26aa0c2f712\n\
    Content-Disposition: form-data; name=\"payload\"\n{\"transaction_id\": \"301c9079-3b20-4311-a131-bcda9b7f08ba\"\
    , \"subscription_id\": ...\n```\nSince the type of this property is `object`,\
    \ multi-valued fields are not supported. This property is ignored unless `encoding`\
    \ is `multipart/form-data`."
  type: string
  inputBinding:
    prefix: --form-fields
- id: in_hmac_key_id
  doc: An optional key ID to use with `hmac_secret_key`.
  type: string
  inputBinding:
    prefix: --hmac-key-id
- id: in_hmac_secret_key
  doc: The key for signing requests to the subscriber's URL. The signature will be
    constructed according to https://tools.ietf.org/html/draft-cavage-http-signatures
    and transmitted in the HTTP `Authorization` header.
  type: string
  inputBinding:
    prefix: --hmac-secret-key
- id: in_j_mes_path_query
  doc: An JMESPath query for restricting the set of bundles for which the subscriber
    is notified. The subscriber will only be notified for new bundles that match the
    given query. If `es_query` is specified, the subscription will be of type `elasticsearch`.
    If `es_query` is not present, the subscription will be of type `jmespath`
  type: File
  inputBinding:
    prefix: --jmespath-query
- id: in_method
  doc: The HTTP request method to use when delivering a notification to the subscriber.
  type: string
  inputBinding:
    prefix: --method
- id: in_payload_form_field
  doc: The name of the form field that will hold the notification payload when the
    request is made. If the default name of the payload field collides with that of
    a field in `form_fields`, this porperty can be used to rename the payload and
    avoid the collision. This property is ignored unless `encoding` is `multipart/form-data`.
  type: string
  inputBinding:
    prefix: --payload-form-field
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- hca
- dss
- put-subscription
