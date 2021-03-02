version 1.0

task HailctlBatchGet {
  input {
    String? specify_output_format
    String batch_id
  }
  command <<<
    hailctl batch get \
      ~{batch_id} \
      ~{if defined(specify_output_format) then ("-o " +  '"' + specify_output_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    specify_output_format: "Specify output format"
    batch_id: "ID number of the desired batch"
  }
  output {
    File out_stdout = stdout()
  }
}