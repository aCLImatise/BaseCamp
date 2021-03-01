class: CommandLineTool
id: panphlan_map.py.cwl
inputs:
- id: in_input
  doc: Metagenomic sample to map
  type: string?
  inputBinding:
    prefix: --input
- id: in_indexes
  doc: Bowtie2 indexes path and file prefix
  type: File?
  inputBinding:
    prefix: --indexes
- id: in_pan_genome
  doc: Path to pangenome tsv file exported from ChocoPhlAn
  type: File?
  inputBinding:
    prefix: --pangenome
- id: in_output
  doc: Path to output file
  type: File?
  inputBinding:
    prefix: --output
- id: in_bt_two
  doc: "Additional bowtie2 mapping options, separated by\nslash: /-D/20/-R/3/, default:\
    \ -bt2 /--very-sensitive/"
  type: long?
  inputBinding:
    prefix: --bt2
- id: in_out_bam
  doc: Get BAM output file
  type: File?
  inputBinding:
    prefix: --out_bam
- id: in_nproc
  doc: "Maximum number of processors to use. Default is 12 or\na lower number of available\
    \ processors."
  type: long?
  inputBinding:
    prefix: --nproc
- id: in_min_read_length
  doc: Minimum read length, default 70
  type: long?
  inputBinding:
    prefix: --min_read_length
- id: in_th_mismatches
  doc: Number of mismatches to filter (bam)
  type: long?
  inputBinding:
    prefix: --th_mismatches
- id: in_sam_memory
  doc: "Maximum amount of memory for Samtools (in Gb). Default\n4"
  type: long?
  inputBinding:
    prefix: --sam_memory
- id: in_fast_a
  doc: Read are fasta format. By default considered as fastq
  type: boolean?
  inputBinding:
    prefix: --fasta
- id: in_verbose
  doc: Show progress information
  type: boolean?
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: Path to output file
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
- id: out_out_bam
  doc: Get BAM output file
  type: File?
  outputBinding:
    glob: $(inputs.in_out_bam)
hints: []
cwlVersion: v1.1
baseCommand:
- panphlan_map.py
