version 1.0

task MakePrgFromMsa {
  input {
    String? alignment_format
    Int? max_nesting
    Int? min_match_length
    String? prefix
    Boolean? no_overwrite
    String msa
  }
  command <<<
    make_prg from_msa \
      ~{msa} \
      ~{if defined(alignment_format) then ("--alignment_format " +  '"' + alignment_format + '"') else ""} \
      ~{if defined(max_nesting) then ("--max_nesting " +  '"' + max_nesting + '"') else ""} \
      ~{if defined(min_match_length) then ("--min_match_length " +  '"' + min_match_length + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if (no_overwrite) then "--no_overwrite" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/make_prg:0.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    alignment_format: "Alignment format of MSA, must be a biopython AlignIO\\ninput alignment_format. See\\nhttp://biopython.org/wiki/AlignIO. Default: fasta"
    max_nesting: "Maximum number of levels to use for nesting. Default:\\n5"
    min_match_length: "Minimum number of consecutive characters which must be\\nidentical for a match. Default: 7"
    prefix: "Output prefix"
    no_overwrite: "Do not overwrite pre-existing prg file with same name"
    msa: "Input file: a multiple sequence alignment in supported\\nalignment_format. If not in aligned fasta\\nalignment_format, use -f to input the alignment_format\\ntype"
  }
  output {
    File out_stdout = stdout()
  }
}