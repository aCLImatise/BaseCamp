version 1.0

task Karect {
  input {
    String? please
    Boolean? run
  }
  command <<<
    karect \
      ~{if defined(please) then ("-Please " +  '"' + please + '"') else ""} \
      ~{if (run) then "-Run" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    please: "the tool you want to run: (correct-align-eval-merge)."
    run: "\\\"karect -[correct|align|eval|merge]\\\" to find information about how to run a specific tool.\\n1) correct: a tool to correct assembly reads from fasta/fastq files.\\n2) align:   a tool to align original assembly reads as pre-processing for evaluation.\\n3) eval:    a tool to evaluate assembly reads correction.\\n4) merge:   a tool to concatenate fasta/fastq files."
  }
  output {
    File out_stdout = stdout()
  }
}