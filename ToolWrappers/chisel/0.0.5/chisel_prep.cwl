class: CommandLineTool
id: chisel_prep.cwl
inputs:
- id: in_reference
  doc: "Reference genome, which is mandatory in FASTQ mode\n(default: None)"
  type: string?
  inputBinding:
    prefix: --reference
- id: in_run_dir
  doc: 'Running directory (default: current directory)'
  type: Directory?
  inputBinding:
    prefix: --rundir
- id: in_output
  doc: "Output name in running directory (default:\nbarcodedcells.bam)"
  type: Directory?
  inputBinding:
    prefix: --output
- id: in_re_xp_name
  doc: "Regulare expression to extract cell name from input\nFASTQ filenames (default:\n\
    `(.*)_S.*_L.*_R[1|2]_001.fastq.*`)"
  type: long?
  inputBinding:
    prefix: --rexpname
- id: in_re_xp_read
  doc: "Regulare expression to extract cell name from input\nFASTQ filenames (default:\n\
    `.*_S.*_L.*_(R[1|2])_001.fastq.*`)"
  type: long?
  inputBinding:
    prefix: --rexpread
- id: in_no_duplicates
  doc: "Do not perform marking duplicates and recalibration\nwith Picard tools (default:\
    \ False)"
  type: boolean?
  inputBinding:
    prefix: --noduplicates
- id: in_keep_tmpdir
  doc: 'Do not erase temporary directory (default: False)'
  type: boolean?
  inputBinding:
    prefix: --keeptmpdir
- id: in_barcode_length
  doc: 'Length of barcodes (default: 12)'
  type: long?
  inputBinding:
    prefix: --barcodelength
- id: in_bcf_tools
  doc: "Path to the directory to \"bcftools\" executable\n(default: in $PATH)"
  type: File?
  inputBinding:
    prefix: --bcftools
- id: in_sam_tools
  doc: "Path to the directory to \"samtools\" executable\n(default: in $PATH)"
  type: File?
  inputBinding:
    prefix: --samtools
- id: in_bwa
  doc: "Path to the directory to \"bwa\" executable (default: in\n$PATH)"
  type: File?
  inputBinding:
    prefix: --bwa
- id: in_jobs
  doc: "Number of parallele jobs to use (default: equal to\nnumber of available processors)"
  type: long?
  inputBinding:
    prefix: --jobs
- id: in_seed
  doc: 'Random seed for replication (default: None)'
  type: string?
  inputBinding:
    prefix: --seed
- id: in_input
  doc: "Input FASTQs, BAMs, or TSV file with different\nbehaviors: .........................................\n\
    (1) FASTQs -- specified in a directory DIR as\n`DIR/*.fastq` or `DIR/*.fastq.gz`\
    \ -- will be barcoded\nand aligned with (optionally) marked duplicates into a\n\
    barcoded BAM file; .................................\n(2) BAMs -- specified in\
    \ a directory DIR as\n`DIR/*.bam` -- will be barcoded and aligned with\n(optionally)\
    \ marked duplicates into a barcoded BAM\nfile; ..............................................\n\
    (3) a single BAM file with unique cells names in the\nfield `RG:Z:` will be converted\
    \ into a barcoded BAM\nfile with the additional `CB:Z:` tag; ..............\n\
    (4) a tab-separated table of inputs (TSV with optional\nheader starting with `#`)\
    \ with two columns: the first\ncolumn is an input file (FASTQ or BAM) and the\
    \ second\ncolumn is the corresponding cell name. When FASTQs are\nprovided, a\
    \ third column can be optionally specified\nto indicate the read name in paired-end\
    \ sequencing,\ne.g., indicating either R1 or R2 for the first or\nsecond mate\
    \ of paired-end reads, respectively. If a\nthird column is not present, FASTQs\
    \ are assumed to be\nfrom single-end sequencing."
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Output name in running directory (default:\nbarcodedcells.bam)"
  type: Directory?
  outputBinding:
    glob: $(inputs.in_output)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/chisel:0.0.5--py_0
cwlVersion: v1.1
baseCommand:
- chisel_prep
