version 1.0

task HcaDssPutfile {
  input {
    File? creator_uid
    Int? source_url
    File? uuid
  }
  command <<<
    hca dss put_file \
      ~{if defined(creator_uid) then ("--creator-uid " +  '"' + creator_uid + '"') else ""} \
      ~{if defined(source_url) then ("--source-url " +  '"' + source_url + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""}
  >>>
  parameter_meta {
    creator_uid: "User ID who is creating this file."
    source_url: "Cloud bucket URL for source data.  Example is \\\"s3://bucket_name/serious_dna.fa\\\" ."
    uuid: "A RFC4122-compliant ID for the file."
  }
  output {
    File out_stdout = stdout()
  }
}