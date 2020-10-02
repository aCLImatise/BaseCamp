class: CommandLineTool
id: uvp.cwl
inputs:
- id: in_fast_q
  doc: Input FASTQ file
  type: File
  inputBinding:
    prefix: --fastq
- id: in_reference
  doc: Reference genome in FASTA format.
  type: string
  inputBinding:
    prefix: --reference
- id: in_name
  doc: Sample name to be used as a prefix.
  type: string
  inputBinding:
    prefix: --name
- id: in_fast_q_two
  doc: Second paired-end FASTQ file.
  type: long
  inputBinding:
    prefix: --fastq2
- id: in_outdir
  doc: Output directory
  type: Directory
  inputBinding:
    prefix: --outdir
- id: in_keep_files
  doc: Keep intermediate files.
  type: boolean
  inputBinding:
    prefix: --keepfiles
- id: in_bwa
  doc: Align Illumina reads using bwa. (Default)
  type: boolean
  inputBinding:
    prefix: --bwa
- id: in_all
  doc: Run all SNP / InDel calling programs.
  type: boolean
  inputBinding:
    prefix: --all
- id: in_g_atk
  doc: Run GATK SNP / InDel calling. (Default)
  type: boolean
  inputBinding:
    prefix: --gatk
- id: in_sam_tools
  doc: Run SamTools SNP / InDel calling.
  type: boolean
  inputBinding:
    prefix: --samtools
- id: in_annotate
  doc: Run snpEff functional annotation.
  type: boolean
  inputBinding:
    prefix: --annotate
- id: in_threads
  doc: Num CPU threads for parallel execution
  type: long
  inputBinding:
    prefix: --threads
- id: in_kraken_db
  doc: Path to kraken database
  type: File
  inputBinding:
    prefix: --krakendb
- id: in_config
  doc: Config file
  type: File
  inputBinding:
    prefix: --config
- id: in_verbose
  doc: Produce status updates of the run.
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: Output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_outdir)
cwlVersion: v1.1
baseCommand:
- uvp
