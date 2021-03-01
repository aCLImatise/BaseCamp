class: CommandLineTool
id: multigrmpy.py.cwl
inputs:
- id: in_input
  doc: Input file of variants. Must be either JSON or VCF.
  type: File?
  inputBinding:
    prefix: --input
- id: in_manifest
  doc: Manifest of samples with path and bam stats.
  type: File?
  inputBinding:
    prefix: --manifest
- id: in_output
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_write_alignments
  doc: "Write alignment JSON files into the output folder\n(large!)."
  type: Directory?
  inputBinding:
    prefix: --write-alignments
- id: in_infer_read_haplotypes
  doc: Infer read haplotype paths
  type: boolean?
  inputBinding:
    prefix: --infer-read-haplotypes
- id: in_reference_sequence
  doc: Reference genome fasta file.
  type: File?
  inputBinding:
    prefix: --reference-sequence
- id: in_threads
  doc: Number of events to process in parallel.
  type: long?
  inputBinding:
    prefix: --threads
- id: in_keep_scratch
  doc: Do not delete temp files.
  type: boolean?
  inputBinding:
    prefix: --keep-scratch
- id: in_scratch_dir
  doc: Directory for temp files
  type: Directory?
  inputBinding:
    prefix: --scratch-dir
- id: in_gr_mpy
  doc: Path to the grmpy executable
  type: File?
  inputBinding:
    prefix: --grmpy
- id: in_log_file
  doc: Write logging information into file rather than to
  type: File?
  inputBinding:
    prefix: --logfile
- id: in_k_lib_sequence_matching
  doc: Use klib smith waterman aligner.
  type: string?
  inputBinding:
    prefix: --klib-sequence-matching
- id: in_km_er_sequence_matching
  doc: Use kmer aligner.
  type: string?
  inputBinding:
    prefix: --kmer-sequence-matching
- id: in_bad_align_uniq_km_er_len
  doc: "Kmer length for uniqueness check during read\nfiltering."
  type: long?
  inputBinding:
    prefix: --bad-align-uniq-kmer-len
- id: in_no_alt_splitting
  doc: "Keep long insertion sequences in the graph rather than\ntrimming them at the\
    \ read / padding length."
  type: boolean?
  inputBinding:
    prefix: --no-alt-splitting
- id: in_verbose
  doc: Raise logging level from warning to info.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_quiet
  doc: Set logging level to output errors only.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_debug
  doc: Log debug level events.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_genotyping_parameters
  doc: JSON string or file with genotyping model parameters.
  type: File?
  inputBinding:
    prefix: --genotyping-parameters
- id: in_max_reads_per_event
  doc: Maximum number of reads to process for a single event.
  type: long?
  inputBinding:
    prefix: --max-reads-per-event
- id: in_vcf_split
  doc: "Mode for splitting the input VCF: lines (default) --\none graph per record\
    \ ; full -- one graph for the whole\nVCF ; by_id -- use the VCF id column to group\
    \ adjacent\nrecords ; superloci -- split VCF into blocks where\nrecords are separated\
    \ by at least read-length\ncharacters"
  type: string?
  inputBinding:
    prefix: --vcf-split
- id: in_read_length
  doc: "Read length -- this is used to add reference padding\nwhen converting VCF\
    \ to graphs."
  type: long?
  inputBinding:
    prefix: --read-length
- id: in_max_ref_node_length
  doc: "Maximum length of reference nodes before they get\npadded and truncated."
  type: long?
  inputBinding:
    prefix: --max-ref-node-length
- id: in_retrieve_reference_sequence
  doc: Retrieve reference sequence for REF nodes
  type: boolean?
  inputBinding:
    prefix: --retrieve-reference-sequence
- id: in_graph_type
  doc: "Type of complex graph to generate. Same as --graph-\ntype in vcf2paragraph."
  type: string?
  inputBinding:
    prefix: --graph-type
- id: in_ins_info_key
  doc: "Key in INFO field to indicate sequence of symbolic\n<INS>\n"
  type: string?
  inputBinding:
    prefix: --ins-info-key
- id: in_stderr
  doc: --graph-sequence-matching GRAPH_SEQUENCE_MATCHING
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_write_alignments
  doc: "Write alignment JSON files into the output folder\n(large!)."
  type: Directory?
  outputBinding:
    glob: $(inputs.in_write_alignments)
hints: []
cwlVersion: v1.1
baseCommand:
- multigrmpy.py
