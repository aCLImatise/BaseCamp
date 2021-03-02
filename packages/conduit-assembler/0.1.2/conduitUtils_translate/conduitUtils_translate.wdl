version 1.0

task ConduitUtilsTranslate {
  input {
    Boolean? fast_a
    Boolean? fast_q
    Boolean? stranded
    Boolean? min_length
  }
  command <<<
    conduitUtils translate \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (fast_q) then "--fastq" else ""} \
      ~{if (stranded) then "--stranded" else ""} \
      ~{if (min_length) then "--min-length" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/conduit-assembler:0.1.2--hbeb723e_0"
  }
  parameter_meta {
    fast_a: "(default)\\nInput file is in FASTA format"
    fast_q: "Input file is in FASTQ format"
    stranded: "Input reads are forward stranded"
    min_length: "(75)\\nMinimum length in Amino Acids necessary for a putative ORF to be reported\\n"
  }
  output {
    File out_stdout = stdout()
  }
}