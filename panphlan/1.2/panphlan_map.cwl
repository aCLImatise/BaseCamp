class: CommandLineTool
id: panphlan_map.py.cwl
inputs:
- id: input
  doc: Short read input files. If no file is specified, panphlan_map reads from standard
    input.
  type: string
  inputBinding:
    prefix: --input
- id: i_bowtie2_indexes
  doc: Input directory of bowtie2 indexes and pangenome
  type: string
  inputBinding:
    prefix: --i_bowtie2_indexes
- id: fast_x
  doc: 'Read input format (fasta or fastq), default: fastq, if not fasta recognized
    by file ending.'
  type: string
  inputBinding:
    prefix: --fastx
- id: clade
  doc: 'Name of the species or clade: -c ecoli16'
  type: string
  inputBinding:
    prefix: --clade
- id: output
  doc: 'Mapping result output-file: -o path/sampleID_clade.csv'
  type: string
  inputBinding:
    prefix: --output
- id: out_bam
  doc: 'Get BAM output file: --out_bam sampleID.bam'
  type: string
  inputBinding:
    prefix: --out_bam
- id: nproc
  doc: Maximum number of processors to use. Default is 12 or a lower number of available
    processors.
  type: string
  inputBinding:
    prefix: --nproc
- id: mgb
  doc: 'Maximum amount of memory for Samtools: -mGB 4'
  type: string
  inputBinding:
    prefix: --mGB
- id: read_length
  doc: 'Minimum read length, default: --readLength 70'
  type: string
  inputBinding:
    prefix: --readLength
- id: bt2
  doc: 'Additional bowtie2 mapping options, separated by slash: /-D/20/-R/3/, default:
    -bt2 /--very-sensitive/'
  type: string
  inputBinding:
    prefix: --bt2
- id: th_mismatches
  doc: Number of mismatches to filter (bam)
  type: string
  inputBinding:
    prefix: --th_mismatches
- id: tmp
  doc: 'Directory for temporary files, default: --tmp TMP_panphlan_map'
  type: string
  inputBinding:
    prefix: --tmp
- id: verbose
  doc: Display progress information
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- panphlan_map.py
