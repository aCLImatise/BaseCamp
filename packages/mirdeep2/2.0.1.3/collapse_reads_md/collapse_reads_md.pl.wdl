version 1.0

task CollapseReadsMdpl {
  input {
    Boolean? outputs_progress
  }
  command <<<
    collapse_reads_md_pl \
      ~{if (outputs_progress) then "-a" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/mirdeep2:2.0.1.3--hdfd78af_0"
  }
  parameter_meta {
    outputs_progress: "outputs progress"
  }
  output {
    File out_stdout = stdout()
  }
}