class: CommandLineTool
id: smCounter2.cwl
inputs:
- id: in_run_path
  doc: path to working directory
  type: File?
  inputBinding:
    prefix: --runPath
- id: in_bed_target
  doc: BED file
  type: File?
  inputBinding:
    prefix: --bedTarget
- id: in_bam_file
  doc: BAM file
  type: File?
  inputBinding:
    prefix: --bamFile
- id: in_out_prefix
  doc: file name prefix
  type: File?
  inputBinding:
    prefix: --outPrefix
- id: in_n_cpu
  doc: number of CPU to use in parallel
  type: long?
  inputBinding:
    prefix: --nCPU
- id: in_min_bq
  doc: minimum base quality allowed for analysis
  type: long?
  inputBinding:
    prefix: --minBQ
- id: in_min_mq
  doc: "minimum mapping quality allowed for analysis. If the\nbam is tagged with its\
    \ mate's mapq, then the minimum\nof the R1 and R2 mapq will be used for comparison,\
    \ if\nnot each read is compared independently."
  type: long?
  inputBinding:
    prefix: --minMQ
- id: in_hp_len
  doc: minimum length for homopolymers
  type: long?
  inputBinding:
    prefix: --hpLen
- id: in_mismatch_thr
  doc: average number of mismatches per 100 bases allowed
  type: long?
  inputBinding:
    prefix: --mismatchThr
- id: in_primer_dist
  doc: filter variants that are within X bases to primer
  type: string?
  inputBinding:
    prefix: --primerDist
- id: in_mt_threshold
  doc: "threshold on read proportion to determine MT level\nconsensus"
  type: string?
  inputBinding:
    prefix: --mtThreshold
- id: in_rpb
  doc: mean read pairs per UMI; default at 0 and will be
  type: long?
  inputBinding:
    prefix: --rpb
- id: in_primer_side
  doc: read end that includes the primer; default is 1
  type: long?
  inputBinding:
    prefix: --primerSide
- id: in_minal_tumi
  doc: minimum requirement of ALT UMIs; default is 3
  type: long?
  inputBinding:
    prefix: --minAltUMI
- id: in_maxalt_allele
  doc: "maximum ALT alleles that meet minAltUMI to be\nreported; default is 2 (tri-allelic\
    \ variants)"
  type: long?
  inputBinding:
    prefix: --maxAltAllele
- id: in_ref_genome
  doc: Path to the reference fasta file
  type: File?
  inputBinding:
    prefix: --refGenome
- id: in_rep_bed
  doc: Path to the simpleRepeat bed file
  type: File?
  inputBinding:
    prefix: --repBed
- id: in_sr_bed
  doc: Path to the full repeat bed file
  type: File?
  inputBinding:
    prefix: --srBed
- id: in_ds
  doc: "down sample if number of UMIs greater than this value\n(RNA only)"
  type: long?
  inputBinding:
    prefix: --ds
- id: in_bam_type
  doc: "raw (default): raw BAM file with UMIs; consensus:\nconsensused BAM file"
  type: File?
  inputBinding:
    prefix: --bamType
- id: in_input_vcf
  doc: optional input VCF file;
  type: File?
  inputBinding:
    prefix: --inputVCF
- id: in_calculated
  doc: --isRna               RNAseq varinat calling only; default is DNAseq
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- smCounter2
