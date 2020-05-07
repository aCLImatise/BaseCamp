class: CommandLineTool
id: smCounter2.cwl
inputs:
- id: run_path
  doc: path to working directory
  type: string
  inputBinding:
    prefix: --runPath
- id: bed_target
  doc: BED file
  type: string
  inputBinding:
    prefix: --bedTarget
- id: bam_file
  doc: BAM file
  type: string
  inputBinding:
    prefix: --bamFile
- id: out_prefix
  doc: file name prefix
  type: string
  inputBinding:
    prefix: --outPrefix
- id: n_cpu
  doc: number of CPU to use in parallel
  type: string
  inputBinding:
    prefix: --nCPU
- id: min_bq
  doc: minimum base quality allowed for analysis
  type: long
  inputBinding:
    prefix: --minBQ
- id: min_mq
  doc: minimum mapping quality allowed for analysis. If the bam is tagged with its
    mate's mapq, then the minimum of the R1 and R2 mapq will be used for comparison,
    if not each read is compared independently.
  type: long
  inputBinding:
    prefix: --minMQ
- id: hp_len
  doc: minimum length for homopolymers
  type: string
  inputBinding:
    prefix: --hpLen
- id: mismatch_thr
  doc: average number of mismatches per 100 bases allowed
  type: string
  inputBinding:
    prefix: --mismatchThr
- id: primer_dist
  doc: filter variants that are within X bases to primer
  type: string
  inputBinding:
    prefix: --primerDist
- id: mt_threshold
  doc: threshold on read proportion to determine MT level consensus
  type: string
  inputBinding:
    prefix: --mtThreshold
- id: rpb
  doc: mean read pairs per UMI; default at 0 and will be calculated
  type: string
  inputBinding:
    prefix: --rpb
- id: is_rna
  doc: RNAseq varinat calling only; default is DNAseq
  type: boolean
  inputBinding:
    prefix: --isRna
- id: primer_side
  doc: read end that includes the primer; default is 1
  type: string
  inputBinding:
    prefix: --primerSide
- id: minal_tumi
  doc: minimum requirement of ALT UMIs; default is 3
  type: long
  inputBinding:
    prefix: --minAltUMI
- id: maxalt_allele
  doc: maximum ALT alleles that meet minAltUMI to be reported; default is 2 (tri-allelic
    variants)
  type: long
  inputBinding:
    prefix: --maxAltAllele
- id: ref_genome
  doc: Path to the reference fasta file
  type: string
  inputBinding:
    prefix: --refGenome
- id: rep_bed
  doc: Path to the simpleRepeat bed file
  type: string
  inputBinding:
    prefix: --repBed
- id: sr_bed
  doc: Path to the full repeat bed file
  type: string
  inputBinding:
    prefix: --srBed
- id: ds
  doc: down sample if number of UMIs greater than this value (RNA only)
  type: string
  inputBinding:
    prefix: --ds
- id: bam_type
  doc: 'raw (default): raw BAM file with UMIs; consensus: consensused BAM file'
  type: string
  inputBinding:
    prefix: --bamType
- id: input_vcf
  doc: optional input VCF file;
  type: string
  inputBinding:
    prefix: --inputVCF
outputs: []
cwlVersion: v1.1
baseCommand:
- smCounter2
