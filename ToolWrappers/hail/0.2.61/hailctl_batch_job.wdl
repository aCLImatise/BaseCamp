version 1.0

task HailctlBatchJob {
  input {
    String? specify_output_format
    String batch_id
    String job_id
  }
  command <<<
    hailctl batch job \
      ~{batch_id} \
      ~{job_id} \
      ~{if defined(specify_output_format) then ("-o " +  '"' + specify_output_format + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hail:0.2.61--py36hf1ae8f4_1"
  }
  parameter_meta {
    specify_output_format: "Specify output format"
    batch_id: "ID number of the desired batch"
    job_id: "ID number of the desired job"
  }
  output {
    File out_stdout = stdout()
  }
}