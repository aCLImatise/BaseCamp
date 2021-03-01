class: CommandLineTool
id: rustynuc.cwl
inputs:
- id: in_all
  doc: Whether to process and print information for every position in the BAM file
  type: boolean?
  inputBinding:
    prefix: --all
- id: in_no_overlapping
  doc: Do not count overlapping mates when calculating total depth
  type: boolean?
  inputBinding:
    prefix: --no-overlapping
- id: in_no_q_val
  doc: Skip calculating qvalue
  type: boolean?
  inputBinding:
    prefix: --no-qval
- id: in_pseudo_count
  doc: Whether to use pseudocounts (increments all counts by 1) when calculating statistics
  type: boolean?
  inputBinding:
    prefix: --pseudocount
- id: in_skip_fishers
  doc: Skip applying Fisher's Exact Filter on VCF
  type: boolean?
  inputBinding:
    prefix: --skip-fishers
- id: in_verbosity
  doc: Determines verbosity of the processing, can be specified multiple times -vvv
  type: boolean?
  inputBinding:
    prefix: --verbosity
- id: in_with_track_line
  doc: Include track line (for correct visualization with IGV)
  type: boolean?
  inputBinding:
    prefix: --with-track-line
- id: in_af_both_pass
  doc: "AF on both the ff and fr at which point a call in the VCF will excluded\n\
    from the OxoAF filter [default: 0.1]"
  type: double?
  inputBinding:
    prefix: --af-both-pass
- id: in_af_either_pass
  doc: "AF above this cutoff in EITHER read orientation will be excluded from OxoAF\n\
    filter [default: 0.25]"
  type: double?
  inputBinding:
    prefix: --af-either-pass
- id: in_alpha
  doc: 'FDR threshold [default: 0.2]'
  type: double?
  inputBinding:
    prefix: --alpha
- id: in_bcf
  doc: BCF/VCF for variants called on the supplied alignment file
  type: File?
  inputBinding:
    prefix: --bcf
- id: in_bed
  doc: A BED file to restrict analysis to specific regions
  type: File?
  inputBinding:
    prefix: --bed
- id: in_fishers_sig
  doc: "Significance threshold for Fisher's test [default: 0.05]"
  type: double?
  inputBinding:
    prefix: --fishers-sig
- id: in_max_depth
  doc: 'Maximum pileup depth to use [default: 1000]'
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_min_reads
  doc: "Minimum number of aligned reads in ff or fr orientation for a position to\n\
    be considered [default: 4]"
  type: long?
  inputBinding:
    prefix: --min-reads
- id: in_quality
  doc: 'Minimum base quality to consider [default: 20]'
  type: long?
  inputBinding:
    prefix: --quality
- id: in_reference
  doc: "Optional reference which will be used to determine sequence context and\n\
    type of change"
  type: string?
  inputBinding:
    prefix: --reference
- id: in_threads
  doc: 'Number of threads [default: 4]'
  type: long?
  inputBinding:
    prefix: --threads
- id: in_flags
  doc: ''
  type: string?
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/rustynuc:0.3.0--hed695b0_0
cwlVersion: v1.1
baseCommand:
- rustynuc
