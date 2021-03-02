version 1.0

task Varda2clientSample {
  input {
    String? uuid
    String? disease_code
    String? lab_sample_id
  }
  command <<<
    varda2_client sample \
      ~{if defined(uuid) then ("--uuid " +  '"' + uuid + '"') else ""} \
      ~{if defined(disease_code) then ("--disease-code " +  '"' + disease_code + '"') else ""} \
      ~{if defined(lab_sample_id) then ("--lab-sample-id " +  '"' + lab_sample_id + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    uuid: "Sample UUID"
    disease_code: "Disease indication code"
    lab_sample_id: "Local sample id\\n"
  }
  output {
    File out_stdout = stdout()
  }
}