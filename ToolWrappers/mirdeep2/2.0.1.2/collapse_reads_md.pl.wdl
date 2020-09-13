version 1.0

task CollapseReadsMdpl {
  input {
    Boolean? outputs_progress
  }
  command <<<
    collapse_reads_md_pl \
      ~{if (outputs_progress) then "-a" else ""}
  >>>
  parameter_meta {
    outputs_progress: "outputs progress"
  }
  output {
    File out_stdout = stdout()
  }
}