version 1.0

task HcaDssPutsubscription {
  input {
    String? callback_url
    Int? attachments
    String? encoding
    String? es_query
    String? form_fields
    String? hmac_key_id
    String? hmac_secret_key
    File? j_mes_path_query
    String? method
    String? payload_form_field
    String? replica
  }
  command <<<
    hca dss put_subscription \
      ~{if defined(callback_url) then ("--callback-url " +  '"' + callback_url + '"') else ""} \
      ~{if defined(attachments) then ("--attachments " +  '"' + attachments + '"') else ""} \
      ~{if defined(encoding) then ("--encoding " +  '"' + encoding + '"') else ""} \
      ~{if defined(es_query) then ("--es-query " +  '"' + es_query + '"') else ""} \
      ~{if defined(form_fields) then ("--form-fields " +  '"' + form_fields + '"') else ""} \
      ~{if defined(hmac_key_id) then ("--hmac-key-id " +  '"' + hmac_key_id + '"') else ""} \
      ~{if defined(hmac_secret_key) then ("--hmac-secret-key " +  '"' + hmac_secret_key + '"') else ""} \
      ~{if defined(j_mes_path_query) then ("--jmespath-query " +  '"' + j_mes_path_query + '"') else ""} \
      ~{if defined(method) then ("--method " +  '"' + method + '"') else ""} \
      ~{if defined(payload_form_field) then ("--payload-form-field " +  '"' + payload_form_field + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  parameter_meta {
    callback_url: "[--encoding {application/json,multipart/form-data}]\\n[--es-query ES_QUERY]\\n[--form-fields FORM_FIELDS]\\n[--hmac-key-id HMAC_KEY_ID]\\n[--hmac-secret-key HMAC_SECRET_KEY]\\n[--jmespath-query JMESPATH_QUERY]\\n[--method {POST,PUT}]\\n[--payload-form-field PAYLOAD_FORM_FIELD]\\n--replica {aws,gcp}"
    attachments: "The set of bundle metadata items to be included in the payload of a notification request to a subscription endpoint. Each property in this object represents an attachment to the notification payload. Each attachment will be a child property of the `attachments` property of the payload. The name of such a child property can be chosen freely provided it does not start with an underscore.\\nFor example, if the subscription is\\n```\\n{\\n\\\"attachments\\\": {\\n\\\"taxon\\\": {\\n\\\"type\\\": \\\"jmespath\\\",\\n\\\"expression\\\": \\\"files.biomaterial_json.biomaterials[].content.biomaterial_core.ncbi_taxon_id[]\\\"\\n}\\n}\\n}\\n```\\nthe corresponding notification payload will contain the following entry\\n```\\n\\\"attachments\\\": {\\n\\\"taxon\\\": [9606, 9606]\\n}\\n```\\nIf a general error occurs during the processing of attachments, the notification will be sent with `attachments` containing only the reserved `_errors` attachment containing a string describing the error. If an error occurs during the processing of a specific attachment, the notification will be sent with all successfully processed attachments and additionally the `_errors` attachment containing an object with one property for each failed attachment. For example,\\n```\\n\\\"attachments\\\": {\\n\\\"taxon\\\": [9606, 9606]\\n\\\"_errors\\\" {\\n\\\"biomaterial\\\": \\\"Some error occurred\\\"\\n}\\n}\\n```\\nThe value of the `attachments` property must be less than or equal to 128 KiB in size when serialized to JSON and encoded as UTF-8. If it is not, the notification will be sent with\\n\\\"attachments\\\": {\\n\\\"_errors\\\": \\\"Attachments too large (131073 bytes)\\\"\\n}"
    encoding: "The MIME type describing the encoding of the request body * `application/json` - the HTTP request body is the notification payload as JSON * `multipart/form-data` - the HTTP request body is a list of form fields, each consisting of a name\\nand a corresponding value. See https://tools.ietf.org/html/rfc7578 for details on this encoding.\\nThe actual notification payload will be placed as JSON into a field of the name specified via\\n`payload_form_field`."
    es_query: "An Elasticsearch query for restricting the set of bundles for which the subscriber is notified. The subscriber will only be notified for newly indexed bundles that match the given query. If this parameter is present the subscription will be of type `elasticsearch`, otherwise it will be of type `jmespath`."
    form_fields: "A collection of static form fields to be supplied in the request body, alongside the actual notification payload. The value of each field must be a string. For example, if the subscriptions has this property set to `{\\\"foo\\\" : \\\"bar\\\"}`, the corresponding notification HTTP request body will consist of a multipart frame with two frames,\\n```\\n----------------2769baffc4f24cbc83ced26aa0c2f712\\nContent-Disposition: form-data; name=\\\"foo\\\"\\nbar\\n----------------2769baffc4f24cbc83ced26aa0c2f712\\nContent-Disposition: form-data; name=\\\"payload\\\"\\n{\\\"transaction_id\\\": \\\"301c9079-3b20-4311-a131-bcda9b7f08ba\\\", \\\"subscription_id\\\": ...\\n```\\nSince the type of this property is `object`, multi-valued fields are not supported. This property is ignored unless `encoding` is `multipart/form-data`."
    hmac_key_id: "An optional key ID to use with `hmac_secret_key`."
    hmac_secret_key: "The key for signing requests to the subscriber's URL. The signature will be constructed according to https://tools.ietf.org/html/draft-cavage-http-signatures and transmitted in the HTTP `Authorization` header."
    j_mes_path_query: "An JMESPath query for restricting the set of bundles for which the subscriber is notified. The subscriber will only be notified for new bundles that match the given query. If `es_query` is specified, the subscription will be of type `elasticsearch`. If `es_query` is not present, the subscription will be of type `jmespath`"
    method: "The HTTP request method to use when delivering a notification to the subscriber."
    payload_form_field: "The name of the form field that will hold the notification payload when the request is made. If the default name of the payload field collides with that of a field in `form_fields`, this porperty can be used to rename the payload and avoid the collision. This property is ignored unless `encoding` is `multipart/form-data`."
    replica: "Replica to write to."
  }
  output {
    File out_stdout = stdout()
  }
}