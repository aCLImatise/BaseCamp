class: CommandLineTool
id: uvp.cwl
inputs:
- id: fast_q
  doc: Input FASTQ file
  type: string
  inputBinding:
    prefix: --fastq
- id: reference
  doc: Reference genome in FASTA format.
  type: string
  inputBinding:
    prefix: --reference
- id: name
  doc: Sample name to be used as a prefix.
  type: string
  inputBinding:
    prefix: --name
- id: fastq2
  doc: Second paired-end FASTQ file.
  type: string
  inputBinding:
    prefix: --fastq2
- id: outdir
  doc: Output directory
  type: string
  inputBinding:
    prefix: --outdir
- id: keep_files
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: bwa
  doc: Align Illumina reads using bwa. (Default)
  type: boolean
  inputBinding:
    prefix: --bwa
- id: all
  doc: Run all SNP / InDel calling programs.
  type: boolean
  inputBinding:
    prefix: --all
- id: g_atk
  doc: Run GATK SNP / InDel calling. (Default)
  type: boolean
  inputBinding:
    prefix: --gatk
- id: sam_tools
  doc: Run SamTools SNP / InDel calling.
  type: boolean
  inputBinding:
    prefix: --samtools
- id: annotate
  doc: Run snpEff functional annotation.
  type: boolean
  inputBinding:
    prefix: --annotate
- id: threads
  doc: Num CPU threads for parallel execution
  type: string
  inputBinding:
    prefix: --threads
- id: kraken_db
  doc: Path to kraken database
  type: string
  inputBinding:
    prefix: --krakendb
- id: config
  doc: Config file
  type: string
  inputBinding:
    prefix: --config
- id: verbose
  doc: Produce status updates of the run.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- uvp
