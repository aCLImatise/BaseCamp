version 1.0

task Minvar {
  input {
    String? fast_q
    Boolean? recal
    Boolean? keep
    Boolean? v
  }
  command <<<
    minvar \
      ~{if defined(fast_q) then ("--fastq " +  '"' + fast_q + '"') else ""} \
      ~{if (recal) then "--recal" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_q: "input reads in fastq format"
    recal: "turn on recalibration with GATK <default: False>"
    keep: "keep intermediate files <default: False>"
    v: ""
  }
  output {
    File out_stdout = stdout()
  }
}