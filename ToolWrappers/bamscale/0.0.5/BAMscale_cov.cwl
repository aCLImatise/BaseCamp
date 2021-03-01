class: CommandLineTool
id: BAMscale_cov.cwl
inputs:
- id: in_bed
  doc: Input BED file
  type: File?
  inputBinding:
    prefix: --bed
- id: in_bam
  doc: Input BAM file. This can be specified multiple times in case of multiple BAM
    files
  type: File?
  inputBinding:
    prefix: --bam
- id: in_lib_type
  doc: 'Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)'
  type: string?
  inputBinding:
    prefix: --libtype
- id: in_frag
  doc: 'Compute coverage using fragments instead of reads (default: no)'
  type: string?
  inputBinding:
    prefix: --frag
- id: in_strand
  doc: 'Reads need to have same orientation of peaks (default: unstranded)'
  type: string?
  inputBinding:
    prefix: --strand
- id: in_r_strand
  doc: 'Reads need to have reverse orientation of peaks (default: unstranded)'
  type: string?
  inputBinding:
    prefix: --rstrand
- id: in_seq_cov
  doc: "Compute sequencing coverage from BAM file quickly using the index (option\
    \ '0'),\nor count number of reads by parsing entire BAM file (slower, but more\
    \ accurate; set to '1' [default])"
  type: long?
  inputBinding:
    prefix: --seqcov
- id: in_blacklist
  doc: Input file with list of chromosomes to blacklist when computing coverage for
    normalization
  type: File?
  inputBinding:
    prefix: --blacklist
- id: in_bed_subtract
  doc: "BED file with regions to subtract when computing coverage for normalization\n\
    These coordinates should not overlap so reads are not counted multiple times"
  type: long?
  inputBinding:
    prefix: --bedsubtract
- id: in_mapq
  doc: 'Minimum (at least) mapping quality (default: 0)'
  type: long?
  inputBinding:
    prefix: --mapq
- id: in_keep_dup
  doc: 'Keep duplicated reads (default: no)'
  type: string?
  inputBinding:
    prefix: --keepdup
- id: in_no_proper
  doc: 'Do not filter un-proper alignments (default: filter)'
  type: string?
  inputBinding:
    prefix: --noproper
- id: in_unmap_pair
  doc: Do not remove reads with unmapped pairs
  type: string?
  inputBinding:
    prefix: --unmappair
- id: in_min_frag
  doc: 'Minimum fragment size for read pairs (default: 0)'
  type: long?
  inputBinding:
    prefix: --minfrag
- id: in_max_frag
  doc: 'Maximum fragment size for read pairs (default: 2000)'
  type: long?
  inputBinding:
    prefix: --maxfrag
- id: in_frag_filt
  doc: 'Filter reads based on fragment size (default: no)'
  type: long?
  inputBinding:
    prefix: --fragfilt
- id: in_diff_chr
  doc: 'Keep reads where read pair aligns to different chromosome (default: no)'
  type: string?
  inputBinding:
    prefix: --diffchr
- id: in_outdir
  doc: "Output directory name (default: '.')"
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_prefix
  doc: 'Output prefix for file names (default: none)'
  type: File?
  inputBinding:
    prefix: --prefix
- id: in_threads
  doc: 'No. of threads to use (default: 1)'
  type: long?
  inputBinding:
    prefix: --threads
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: "Output directory name (default: '.')"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
- id: out_prefix
  doc: 'Output prefix for file names (default: none)'
  type: File?
  outputBinding:
    glob: $(inputs.in_prefix)
hints: []
cwlVersion: v1.1
baseCommand:
- BAMscale
- cov
