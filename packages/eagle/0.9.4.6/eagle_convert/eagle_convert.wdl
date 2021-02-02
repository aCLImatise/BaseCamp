version 1.0

task EagleConvert {
  input {
    Boolean? samples
    String? ref
  }
  command <<<
    eagle convert \
      ~{if (samples) then "--samples" else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""}
  >>>
  parameter_meta {
    samples: "[SAMPLES [SAMPLES ...]]\\nlimit the output creation to these samples"
    ref: "the reference in fasta format to extract a variant\\nmotifs information\\n"
  }
  output {
    File out_stdout = stdout()
  }
}