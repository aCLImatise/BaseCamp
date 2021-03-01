version 1.0

task Hivtrace {
  input {
    File? fasta_file
    String? ambiguities
    String? reference
    String? threshold
    Int? min_overlap
    String? filter
    File? strip_drams
    Boolean? compare
    Boolean? do_not_store_intermediate
    Boolean? skip_alignment
    File? attributes_file
    Directory? log
    File? specify_output_filename
    String? prior
    String fraction
  }
  command <<<
    hivtrace \
      ~{fraction} \
      ~{if defined(fasta_file) then ("--input " +  '"' + fasta_file + '"') else ""} \
      ~{if defined(ambiguities) then ("--ambiguities " +  '"' + ambiguities + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(threshold) then ("--threshold " +  '"' + threshold + '"') else ""} \
      ~{if defined(min_overlap) then ("--minoverlap " +  '"' + min_overlap + '"') else ""} \
      ~{if defined(filter) then ("--filter " +  '"' + filter + '"') else ""} \
      ~{if defined(strip_drams) then ("--strip_drams " +  '"' + strip_drams + '"') else ""} \
      ~{if (compare) then "--compare" else ""} \
      ~{if (do_not_store_intermediate) then "--do-not-store-intermediate" else ""} \
      ~{if (skip_alignment) then "--skip-alignment" else ""} \
      ~{if defined(attributes_file) then ("--attributes-file " +  '"' + attributes_file + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""} \
      ~{if defined(specify_output_filename) then ("--output " +  '"' + specify_output_filename + '"') else ""} \
      ~{if defined(prior) then ("--prior " +  '"' + prior + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fasta_file: "FASTA file"
    ambiguities: "handle ambiguous nucleotides using the specified\\nstrategy"
    reference: "reference to align to"
    threshold: "Only count edges where the distance is less than this\\nthreshold"
    min_overlap: "Minimum Overlap"
    filter: "Edge filtering option"
    strip_drams: "Read in an aligned Fasta file (HIV prot/rt sequences)\\nand remove DRAM (drug resistance associated mutation)\\ncodon sites. It will output a new alignment with these\\nsites removed. It requires input/output file names\\nalong with the list of DRAM sites to remove: 'lewis'\\nor 'wheeler'."
    compare: "Compare to supplied FASTA file"
    do_not_store_intermediate: "Store intermediate files"
    skip_alignment: "Skip alignment"
    attributes_file: "Annotate with attributes"
    log: "Write logs to specified directory"
    specify_output_filename: "Specify output filename"
    prior: "Prior network configuration\\n"
    fraction: "-u CURATE, --curate CURATE"
  }
  output {
    File out_stdout = stdout()
    File out_specify_output_filename = "${in_specify_output_filename}"
  }
}