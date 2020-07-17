version 1.0

task Multigrmpy.py {
  input {
    String? input_file_variants
    String? manifest
    String? output_directory
    Boolean? write_alignments
    Boolean? infer_read_haplotypes
    String? reference_sequence
    String? threads
    Boolean? keep_scratch
    String? scratch_dir
    String? gr_mpy
    String? log_file
    String? graph_sequence_matching
    String? k_lib_sequence_matching
    String? km_er_sequence_matching
    String? bad_align_uniq_km_er_len
    Boolean? no_alt_splitting
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    String? genotyping_parameters
    Int? max_reads_per_event
    String? vcf_split
    String? read_length
    Int? max_ref_node_length
    Boolean? retrieve_reference_sequence
    String? graph_type
    String? ins_info_key
  }
  command <<<
    multigrmpy.py \
      ~{if defined(input_file_variants) then ("--input " +  '"' + input_file_variants + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{true="--write-alignments" false="" write_alignments} \
      ~{true="--infer-read-haplotypes" false="" infer_read_haplotypes} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{true="--keep-scratch" false="" keep_scratch} \
      ~{if defined(scratch_dir) then ("--scratch-dir " +  '"' + scratch_dir + '"') else ""} \
      ~{if defined(gr_mpy) then ("--grmpy " +  '"' + gr_mpy + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(graph_sequence_matching) then ("--graph-sequence-matching " +  '"' + graph_sequence_matching + '"') else ""} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(bad_align_uniq_km_er_len) then ("--bad-align-uniq-kmer-len " +  '"' + bad_align_uniq_km_er_len + '"') else ""} \
      ~{true="--no-alt-splitting" false="" no_alt_splitting} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--debug" false="" debug} \
      ~{if defined(genotyping_parameters) then ("--genotyping-parameters " +  '"' + genotyping_parameters + '"') else ""} \
      ~{if defined(max_reads_per_event) then ("--max-reads-per-event " +  '"' + max_reads_per_event + '"') else ""} \
      ~{if defined(vcf_split) then ("--vcf-split " +  '"' + vcf_split + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(max_ref_node_length) then ("--max-ref-node-length " +  '"' + max_ref_node_length + '"') else ""} \
      ~{true="--retrieve-reference-sequence" false="" retrieve_reference_sequence} \
      ~{if defined(graph_type) then ("--graph-type " +  '"' + graph_type + '"') else ""} \
      ~{if defined(ins_info_key) then ("--ins-info-key " +  '"' + ins_info_key + '"') else ""}
  >>>
  parameter_meta {
    input_file_variants: "Input file of variants. Must be either JSON or VCF."
    manifest: "Manifest of samples with path and bam stats."
    output_directory: "Output directory."
    write_alignments: "Write alignment JSON files into the output folder (large!)."
    infer_read_haplotypes: "Infer read haplotype paths"
    reference_sequence: "Reference genome fasta file."
    threads: "Number of events to process in parallel."
    keep_scratch: "Do not delete temp files."
    scratch_dir: "Directory for temp files"
    gr_mpy: "Path to the grmpy executable"
    log_file: "Write logging information into file rather than to stderr"
    graph_sequence_matching: "Use graph aligner."
    k_lib_sequence_matching: "Use klib smith waterman aligner."
    km_er_sequence_matching: "Use kmer aligner."
    bad_align_uniq_km_er_len: "Kmer length for uniqueness check during read filtering."
    no_alt_splitting: "Keep long insertion sequences in the graph rather than trimming them at the read / padding length."
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    debug: "Log debug level events."
    genotyping_parameters: "JSON string or file with genotyping model parameters."
    max_reads_per_event: "Maximum number of reads to process for a single event."
    vcf_split: "Mode for splitting the input VCF: lines (default) -- one graph per record ; full -- one graph for the whole VCF ; by_id -- use the VCF id column to group adjacent records ; superloci -- split VCF into blocks where records are separated by at least read-length characters"
    read_length: "Read length -- this is used to add reference padding when converting VCF to graphs."
    max_ref_node_length: "Maximum length of reference nodes before they get padded and truncated."
    retrieve_reference_sequence: "Retrieve reference sequence for REF nodes"
    graph_type: "Type of complex graph to generate. Same as --graph- type in vcf2paragraph."
    ins_info_key: "Key in INFO field to indicate sequence of symbolic <INS>"
  }
}