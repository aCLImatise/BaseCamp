version 1.0

task Multigrmpypy {
  input {
    File? input_file_variants
    File? manifest
    Directory? output_directory
    Directory? write_alignments
    Boolean? infer_read_haplotypes
    File? reference_sequence
    Int? threads
    Boolean? keep_scratch
    Directory? scratch_dir
    File? gr_mpy
    File? log_file
    String? k_lib_sequence_matching
    String? km_er_sequence_matching
    Int? bad_align_uniq_km_er_len
    Boolean? no_alt_splitting
    Boolean? verbose
    Boolean? quiet
    Boolean? debug
    File? genotyping_parameters
    Int? max_reads_per_event
    String? vcf_split
    Int? read_length
    Int? max_ref_node_length
    Boolean? retrieve_reference_sequence
    String? graph_type
    String? ins_info_key
    String stderr
  }
  command <<<
    multigrmpy_py \
      ~{stderr} \
      ~{if defined(input_file_variants) then ("--input " +  '"' + input_file_variants + '"') else ""} \
      ~{if defined(manifest) then ("--manifest " +  '"' + manifest + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if (write_alignments) then "--write-alignments" else ""} \
      ~{if (infer_read_haplotypes) then "--infer-read-haplotypes" else ""} \
      ~{if defined(reference_sequence) then ("--reference-sequence " +  '"' + reference_sequence + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if (keep_scratch) then "--keep-scratch" else ""} \
      ~{if defined(scratch_dir) then ("--scratch-dir " +  '"' + scratch_dir + '"') else ""} \
      ~{if defined(gr_mpy) then ("--grmpy " +  '"' + gr_mpy + '"') else ""} \
      ~{if defined(log_file) then ("--logfile " +  '"' + log_file + '"') else ""} \
      ~{if defined(k_lib_sequence_matching) then ("--klib-sequence-matching " +  '"' + k_lib_sequence_matching + '"') else ""} \
      ~{if defined(km_er_sequence_matching) then ("--kmer-sequence-matching " +  '"' + km_er_sequence_matching + '"') else ""} \
      ~{if defined(bad_align_uniq_km_er_len) then ("--bad-align-uniq-kmer-len " +  '"' + bad_align_uniq_km_er_len + '"') else ""} \
      ~{if (no_alt_splitting) then "--no-alt-splitting" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(genotyping_parameters) then ("--genotyping-parameters " +  '"' + genotyping_parameters + '"') else ""} \
      ~{if defined(max_reads_per_event) then ("--max-reads-per-event " +  '"' + max_reads_per_event + '"') else ""} \
      ~{if defined(vcf_split) then ("--vcf-split " +  '"' + vcf_split + '"') else ""} \
      ~{if defined(read_length) then ("--read-length " +  '"' + read_length + '"') else ""} \
      ~{if defined(max_ref_node_length) then ("--max-ref-node-length " +  '"' + max_ref_node_length + '"') else ""} \
      ~{if (retrieve_reference_sequence) then "--retrieve-reference-sequence" else ""} \
      ~{if defined(graph_type) then ("--graph-type " +  '"' + graph_type + '"') else ""} \
      ~{if defined(ins_info_key) then ("--ins-info-key " +  '"' + ins_info_key + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_file_variants: "Input file of variants. Must be either JSON or VCF."
    manifest: "Manifest of samples with path and bam stats."
    output_directory: "Output directory."
    write_alignments: "Write alignment JSON files into the output folder\\n(large!)."
    infer_read_haplotypes: "Infer read haplotype paths"
    reference_sequence: "Reference genome fasta file."
    threads: "Number of events to process in parallel."
    keep_scratch: "Do not delete temp files."
    scratch_dir: "Directory for temp files"
    gr_mpy: "Path to the grmpy executable"
    log_file: "Write logging information into file rather than to"
    k_lib_sequence_matching: "Use klib smith waterman aligner."
    km_er_sequence_matching: "Use kmer aligner."
    bad_align_uniq_km_er_len: "Kmer length for uniqueness check during read\\nfiltering."
    no_alt_splitting: "Keep long insertion sequences in the graph rather than\\ntrimming them at the read / padding length."
    verbose: "Raise logging level from warning to info."
    quiet: "Set logging level to output errors only."
    debug: "Log debug level events."
    genotyping_parameters: "JSON string or file with genotyping model parameters."
    max_reads_per_event: "Maximum number of reads to process for a single event."
    vcf_split: "Mode for splitting the input VCF: lines (default) --\\none graph per record ; full -- one graph for the whole\\nVCF ; by_id -- use the VCF id column to group adjacent\\nrecords ; superloci -- split VCF into blocks where\\nrecords are separated by at least read-length\\ncharacters"
    read_length: "Read length -- this is used to add reference padding\\nwhen converting VCF to graphs."
    max_ref_node_length: "Maximum length of reference nodes before they get\\npadded and truncated."
    retrieve_reference_sequence: "Retrieve reference sequence for REF nodes"
    graph_type: "Type of complex graph to generate. Same as --graph-\\ntype in vcf2paragraph."
    ins_info_key: "Key in INFO field to indicate sequence of symbolic\\n<INS>\\n"
    stderr: "--graph-sequence-matching GRAPH_SEQUENCE_MATCHING"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
    Directory out_write_alignments = "${in_write_alignments}"
  }
}