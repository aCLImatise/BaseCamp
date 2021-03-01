version 1.0

task HcaDssPutbundle {
  input {
    String? creator_uid
    Array[String] files
    Int? uuid
    String? replica
  }
  command <<<
    hca dss put_bundle \
      ~{if defined(creator_uid) then ("--creator-uid " +  '"' + creator_uid + '"') else ""} \
      ~{if defined(files) then ("--files " +  '"' + files + '"') else ""} \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(replica) then ("--replica " +  '"' + replica + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    creator_uid: "User ID who is creating this bundle."
    files: "This is a list of dictionaries describing each of the files. Each dictionary includes the fields: - The \\\"uuid\\\" of a file already previously uploaded with \\\"PUT file/{uuid}\\\". - The \\\"version\\\" timestamp of the file. - The \\\"name\\\" of the file. This can be most anything, and is the name the file will have when downloaded. - The \\\"indexed\\\" field, which specifies whether a file should be indexed or not.\\nBundle manifests exceeding 20,000 files will not be included in the Elasticsearch index document.\\nExample representing 2 files with dummy values: [{'uuid': 'ce55fd51-7833-469b-be0b-5da88ebebfcd',\\n'version': '2017-06-16T193604.240704Z',\\n'name': 'dinosaur_dna.fa',\\n'indexed': False},\\n{'uuid': 'ae55fd51-7833-469b-be0b-5da88ebebfca',\\n'version': '0303-04-23T193604.240704Z',\\n'name': 'dragon_dna.fa',\\n'indexed': False}]"
    uuid: "A RFC4122-compliant ID for the bundle."
    replica: "Replica to write to."
  }
  output {
    File out_stdout = stdout()
  }
}