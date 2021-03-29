version 1.0

task Stackssamtoolstview {
  input {
    String? write_alignments
    String? c
    String? p
  }
  command <<<
    stacks_samtools_tview \
      ~{if defined(write_alignments) then ("--write-alignments " +  '"' + write_alignments + '"') else ""} \
      ~{if defined(c) then ("-c " +  '"' + c + '"') else ""} \
      ~{if defined(p) then ("-P " +  '"' + p + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/stacks:2.55--he513fc3_0"
  }
  parameter_meta {
    write_alignments: "(This is a convenience wrapper around samtools-tview.)"
    c: ""
    p: ""
  }
  output {
    File out_stdout = stdout()
  }
}