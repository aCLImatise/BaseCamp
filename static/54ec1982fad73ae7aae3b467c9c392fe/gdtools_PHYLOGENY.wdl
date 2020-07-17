version 1.0

task GdtoolsPHYLOGENY {
  input {
    Boolean? verbose
    String? path_output_file
    String? reference
    Boolean? missing_as_ancestral
    Boolean? phylogeny_aware
  }
  command <<<
    gdtools PHYLOGENY \
      ~{true="--verbose" false="" verbose} \
      ~{if defined(path_output_file) then ("--output " +  '"' + path_output_file + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--missing-as-ancestral" false="" missing_as_ancestral} \
      ~{true="--phylogeny-aware" false="" phylogeny_aware}
  >>>
  parameter_meta {
    verbose: "produce output for each mutation counted."
    path_output_file: "path to output file with added mutation data. (DEFAULT=.)"
    reference: "File containing reference sequences in GenBank, GFF3, or FASTA format. Option may be provided multiple times for multiple files (REQUIRED)"
    missing_as_ancestral: "Count missing data (mutations in UN regions) as the ancestral allele rather than as an unknown allele (N)."
    phylogeny_aware: "Check the optional 'phylogeny_id' field when deciding if entries are equivalent"
  }
}