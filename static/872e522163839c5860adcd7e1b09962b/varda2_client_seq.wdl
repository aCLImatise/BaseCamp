version 1.0

task Varda2clientSeq {
  input {
    String? sequence
  }
  command <<<
    varda2_client seq \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/varda2-client:0.9--py_0"
  }
  parameter_meta {
    sequence: "Sequence\\n"
  }
  output {
    File out_stdout = stdout()
  }
}