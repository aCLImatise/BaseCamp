class: CommandLineTool
id: BAMscale_cov.cwl
inputs:
- id: bed
  doc: Input BED file
  type: File
  inputBinding:
    prefix: --bed
- id: bam
  doc: Input BAM file. This can be specified multiple times in case of multiple BAM
    files
  type: File
  inputBinding:
    prefix: --bam
- id: lib_type
  doc: 'Sequencing type to be used. Can be: single, paired, and auto (default: autodetect)'
  type: string
  inputBinding:
    prefix: --libtype
- id: frag
  doc: 'Compute coverage using fragments instead of reads (default: no)'
  type: string
  inputBinding:
    prefix: --frag
- id: strand
  doc: 'Reads need to have same orientation of peaks (default: unstranded)'
  type: string
  inputBinding:
    prefix: --strand
- id: r_strand
  doc: 'Reads need to have reverse orientation of peaks (default: unstranded)'
  type: string
  inputBinding:
    prefix: --rstrand
- id: seq_cov
  doc: Compute sequencing coverage from BAM file quickly using the index (option '0'),
    or count number of reads by parsing entire BAM file (slower, but more accurate;
    set to '1' [default])
  type: long
  inputBinding:
    prefix: --seqcov
- id: blacklist
  doc: Input file with list of chromosomes to blacklist when computing coverage for
    normalization
  type: File
  inputBinding:
    prefix: --blacklist
- id: bed_subtract
  doc: BED file with regions to subtract when computing coverage for normalization
    These coordinates should not overlap so reads are not counted multiple times
  type: long
  inputBinding:
    prefix: --bedsubtract
- id: mapq
  doc: 'Minimum (at least) mapping quality (default: 0)'
  type: long
  inputBinding:
    prefix: --mapq
- id: keep_dup
  doc: 'Keep duplicated reads (default: no)'
  type: string
  inputBinding:
    prefix: --keepdup
- id: no_proper
  doc: 'Do not filter un-proper alignments (default: filter)'
  type: string
  inputBinding:
    prefix: --noproper
- id: unmap_pair
  doc: Do not remove reads with unmapped pairs
  type: string
  inputBinding:
    prefix: --unmappair
- id: min_frag
  doc: 'Minimum fragment size for read pairs (default: 0)'
  type: long
  inputBinding:
    prefix: --minfrag
- id: max_frag
  doc: 'Maximum fragment size for read pairs (default: 2000)'
  type: long
  inputBinding:
    prefix: --maxfrag
- id: frag_filt
  doc: 'Filter reads based on fragment size (default: no)'
  type: string
  inputBinding:
    prefix: --fragfilt
- id: diff_chr
  doc: 'Keep reads where read pair aligns to different chromosome (default: no)'
  type: string
  inputBinding:
    prefix: --diffchr
- id: outdir
  doc: "Output directory name (default: '.')"
  type: string
  inputBinding:
    prefix: --outdir
- id: prefix
  doc: 'Output prefix for file names (default: none)'
  type: string
  inputBinding:
    prefix: --prefix
- id: threads
  doc: 'No. of threads to use (default: 1)'
  type: long
  inputBinding:
    prefix: --threads
outputs: []
cwlVersion: v1.1
baseCommand:
- BAMscale
- cov
