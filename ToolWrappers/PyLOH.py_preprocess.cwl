class: CommandLineTool
id: PyLOH.py_preprocess.cwl
inputs:
- id: in_segments_bed
  doc: "BED file for segments. If not provided, use autosomes\nas segments. Default\
    \ is None."
  type: File
  inputBinding:
    prefix: --segments_bed
- id: in_wes
  doc: "Flag indicating whether the BAM files are whole exome\nsequencing(WES) or\
    \ not. If not provided, the BAM files\nare assumed to be whole genome sequencing(WGS).\n\
    Default is False."
  type: boolean
  inputBinding:
    prefix: --WES
- id: in_min_depth
  doc: "Minimum reads depth required for both normal and tumor\nsamples. Default is\
    \ 20."
  type: long
  inputBinding:
    prefix: --min_depth
- id: in_min_base_qual
  doc: Minimum base quality required. Default is 10.
  type: long
  inputBinding:
    prefix: --min_base_qual
- id: in_min_map_qual
  doc: Minimum mapping quality required. Default is 10.
  type: long
  inputBinding:
    prefix: --min_map_qual
- id: in_process_num
  doc: "Number of processes to launch for preprocessing.\nDefault is 1.\n"
  type: long
  inputBinding:
    prefix: --process_num
- id: in_reference_genome
  doc: FASTA file for reference genome.
  type: string
  inputBinding:
    position: 0
- id: in_normal_bam
  doc: BAM file for normal sample.
  type: string
  inputBinding:
    position: 1
- id: in_tumor_bam
  doc: BAM file for tumor sample.
  type: string
  inputBinding:
    position: 2
- id: in_filename_base
  doc: Base name of preprocessed files to be created.
  type: string
  inputBinding:
    position: 3
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- PyLOH.py
- preprocess
