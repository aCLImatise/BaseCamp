class: CommandLineTool
id: multigrmpy.py.cwl
inputs:
- id: input
  doc: Input file of variants. Must be either JSON or VCF.
  type: string
  inputBinding:
    prefix: --input
- id: manifest
  doc: Manifest of samples with path and bam stats.
  type: string
  inputBinding:
    prefix: --manifest
- id: output
  doc: Output directory.
  type: string
  inputBinding:
    prefix: --output
- id: write_alignments
  doc: Write alignment JSON files into the output folder (large!).
  type: boolean
  inputBinding:
    prefix: --write-alignments
- id: infer_read_haplotypes
  doc: Infer read haplotype paths
  type: boolean
  inputBinding:
    prefix: --infer-read-haplotypes
- id: reference_sequence
  doc: Reference genome fasta file.
  type: string
  inputBinding:
    prefix: --reference-sequence
- id: threads
  doc: Number of events to process in parallel.
  type: string
  inputBinding:
    prefix: --threads
- id: keep_scratch
  doc: Do not delete temp files.
  type: boolean
  inputBinding:
    prefix: --keep-scratch
- id: scratch_dir
  doc: Directory for temp files
  type: string
  inputBinding:
    prefix: --scratch-dir
- id: gr_mpy
  doc: Path to the grmpy executable
  type: string
  inputBinding:
    prefix: --grmpy
- id: log_file
  doc: Write logging information into file rather than to stderr
  type: string
  inputBinding:
    prefix: --logfile
- id: graph_sequence_matching
  doc: Use graph aligner.
  type: string
  inputBinding:
    prefix: --graph-sequence-matching
- id: k_lib_sequence_matching
  doc: Use klib smith waterman aligner.
  type: string
  inputBinding:
    prefix: --klib-sequence-matching
- id: km_er_sequence_matching
  doc: Use kmer aligner.
  type: string
  inputBinding:
    prefix: --kmer-sequence-matching
- id: bad_align_uniq_km_er_len
  doc: Kmer length for uniqueness check during read filtering.
  type: string
  inputBinding:
    prefix: --bad-align-uniq-kmer-len
- id: no_alt_splitting
  doc: Keep long insertion sequences in the graph rather than trimming them at the
    read / padding length.
  type: boolean
  inputBinding:
    prefix: --no-alt-splitting
- id: verbose
  doc: Raise logging level from warning to info.
  type: boolean
  inputBinding:
    prefix: --verbose
- id: quiet
  doc: Set logging level to output errors only.
  type: boolean
  inputBinding:
    prefix: --quiet
- id: debug
  doc: Log debug level events.
  type: boolean
  inputBinding:
    prefix: --debug
- id: genotyping_parameters
  doc: JSON string or file with genotyping model parameters.
  type: string
  inputBinding:
    prefix: --genotyping-parameters
- id: max_reads_per_event
  doc: Maximum number of reads to process for a single event.
  type: long
  inputBinding:
    prefix: --max-reads-per-event
- id: vcf_split
  doc: 'Mode for splitting the input VCF: lines (default) -- one graph per record
    ; full -- one graph for the whole VCF ; by_id -- use the VCF id column to group
    adjacent records ; superloci -- split VCF into blocks where records are separated
    by at least read-length characters'
  type: string
  inputBinding:
    prefix: --vcf-split
- id: read_length
  doc: Read length -- this is used to add reference padding when converting VCF to
    graphs.
  type: string
  inputBinding:
    prefix: --read-length
- id: max_ref_node_length
  doc: Maximum length of reference nodes before they get padded and truncated.
  type: long
  inputBinding:
    prefix: --max-ref-node-length
- id: retrieve_reference_sequence
  doc: Retrieve reference sequence for REF nodes
  type: boolean
  inputBinding:
    prefix: --retrieve-reference-sequence
- id: graph_type
  doc: Type of complex graph to generate. Same as --graph- type in vcf2paragraph.
  type: string
  inputBinding:
    prefix: --graph-type
- id: ins_info_key
  doc: Key in INFO field to indicate sequence of symbolic <INS>
  type: string
  inputBinding:
    prefix: --ins-info-key
outputs: []
cwlVersion: v1.1
baseCommand:
- multigrmpy.py
