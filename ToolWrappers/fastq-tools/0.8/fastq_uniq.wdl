version 1.0

task Fastquniq {
  input {
    Boolean? verbose
  }
  command <<<
    fastq_uniq \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    verbose: "print status along the way"
  }
  output {
    File out_stdout = stdout()
  }
}