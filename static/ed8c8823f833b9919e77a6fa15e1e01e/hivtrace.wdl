version 1.0

task Hivtrace {
  input {
    String? fasta_file
    String? ambiguities
    String? reference
    String? threshold
    Int? min_overlap
    String? fraction
    String? curate
    String? filter
    String? strip_drams
    Boolean? compare
    Boolean? do_not_store_intermediate
    Boolean? skip_alignment
    String? attributes_file
    String? log
    String? specify_output_filename
    String? prior
  }
  command <<<
    hivtrace \
      ~{if defined(fasta_file) then ("--input " +  '"' + fasta_file + '"') else ""} \
      ~{if defined(ambiguities) then ("--ambiguities " +  '"' + ambiguities + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_overlap) then ("--minoverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(fraction) then ("--fraction " +  '"' + fraction + '"') else ""} \
      ~{if defined(curate) then ("--curate " +  '"' + curate + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(strip_drams) then ("--strip_drams " +  '"' + strip_drams + '"') else ""} \
      ~{true="--compare" false="" compare} \
      ~{true="--do-not-store-intermediate" false="" do_not_store_intermediate} \
      ~{true="--skip-alignment" false="" skip_alignment} \
      ~{if defined(attributes_file) then ("--attributes-file " +  '"' + attributes_file + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(specify_output_filename) then ("--output " +  '"' + specify_output_filename + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""}
  >>>
  parameter_meta {
    fasta_file: "FASTA file"
    ambiguities: "handle ambiguous nucleotides using the specified strategy"
    reference: "reference to align to"
    threshold: "Only count edges where the distance is less than this threshold"
    min_overlap: "Minimum Overlap"
    fraction: "Fraction"
    curate: "Filter contaminants"
    filter: "Edge filtering option"
    strip_drams: "Read in an aligned Fasta file (HIV prot/rt sequences) and remove DRAM (drug resistance associated mutation) codon sites. It will output a new alignment with these sites removed. It requires input/output file names along with the list of DRAM sites to remove: 'lewis' or 'wheeler'."
    compare: "Compare to supplied FASTA file"
    do_not_store_intermediate: "Store intermediate files"
    skip_alignment: "Skip alignment"
    attributes_file: "Annotate with attributes"
    log: "Write logs to specified directory"
    specify_output_filename: "Specify output filename"
    prior: "Prior network configuration"
  }
}