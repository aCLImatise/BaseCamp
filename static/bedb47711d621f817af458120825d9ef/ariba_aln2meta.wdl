version 1.0

task AribaAln2meta {
  input {
    Int? genetic_code
    Boolean? variant_only
    String aln_fast_a
    String variants_tsv
    String out_prefix
  }
  command <<<
    ariba aln2meta \
      ~{aln_fast_a} \
      ~{variants_tsv} \
      ~{out_prefix} \
      ~{if defined(genetic_code) then ("--genetic_code " +  '"' + genetic_code + '"') else ""} \
      ~{if (variant_only) then "--variant_only" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ariba:2.14.6--py36hf0b53f7_0"
  }
  parameter_meta {
    genetic_code: "Number of genetic code to use. Currently supported\\n1,4,11 [11]"
    variant_only: "Use this to flag all sequences as variant only. By\\ndefault they are considered to be presence/absence\\n"
    aln_fast_a: "Multi-fasta file of alignments"
    variants_tsv: "TSV file of variants information"
    out_prefix: "Prefix of output filenames"
  }
  output {
    File out_stdout = stdout()
  }
}