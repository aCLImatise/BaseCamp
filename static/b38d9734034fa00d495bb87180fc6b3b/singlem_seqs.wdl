version 1.0

task SinglemSeqs {
  input {
    Boolean? debug
    Boolean? quiet
    Boolean? full_help
    String? alignment
    String? alignment_type
    Int? window_size
  }
  command <<<
    singlem seqs \
      ~{if (debug) then "--debug" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (full_help) then "--full_help" else ""} \
      ~{if defined(alignment) then ("--alignment " +  '"' + alignment + '"') else ""} \
      ~{if defined(alignment_type) then ("--alignment_type " +  '"' + alignment_type + '"') else ""} \
      ~{if defined(window_size) then ("--window_size " +  '"' + window_size + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "output debug information"
    quiet: "only output errors"
    full_help: "display all help options"
    alignment: "Protein sequences hmmaligned and converted to fasta\\nformat with seqmagick"
    alignment_type: "alignment is 'aa' or 'dna'"
    window_size: "Number of nucleotides to use in continuous window"
  }
  output {
    File out_stdout = stdout()
  }
}