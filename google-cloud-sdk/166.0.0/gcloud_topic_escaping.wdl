version 1.0

task GcloudTopicEscaping {
  input {
    Int? list_flag
    Int? dict_flag
    Boolean? addresses
    Int? region
    Boolean? metadata
  }
  command <<<
    gcloud topic escaping \
      ~{if defined(list_flag) then ("--list-flag " +  '"' + list_flag + '"') else ""} \
      ~{if defined(dict_flag) then ("--dict-flag " +  '"' + dict_flag + '"') else ""} \
      ~{if (addresses) then "--addresses" else ""} \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (metadata) then "--metadata" else ""}
  >>>
  parameter_meta {
    list_flag: ",value2,value3"
    dict_flag: "=value1,key2=value2"
    addresses: "^:^123.456.789.198:22.333.146.189:789.312.645      \\"
    region: ""
    metadata: "\\"
  }
  output {
    File out_stdout = stdout()
  }
}