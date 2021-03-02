class: CommandLineTool
id: rapidStats.sh.cwl
inputs:
- id: in_file
  doc: ': the input file'
  type: File?
  inputBinding:
    prefix: --file
- id: in_file_type
  doc: '= BAM/SAM/fq : Mention either BAM/SAM or FASTQ. Default FASTQ'
  type: boolean?
  inputBinding:
    prefix: --filetype
- id: in_an_not
  doc: ': bed file with regions that should be annotated with read alignments (Multiple
    Bed files should be separated by commas)'
  type: File?
  inputBinding:
    prefix: --annot
- id: in_rapid
  doc: '/ : set location of the rapid installation bin folder (e.g. /home/software/RAPID/bin/)
    or put into PATH variable'
  type: File?
  inputBinding:
    prefix: --rapid
- id: in_index
  doc: '/ : set location of the bowtie2 index for alignment'
  type: File?
  inputBinding:
    prefix: --index
- id: in_contam_in
  doc: ': use a double alignment step first aligning to a contamination file (default
    no)'
  type: File?
  inputBinding:
    prefix: --contamin
- id: in_index_co
  doc: / set location of the contamination bowtie2 index for alignment (only with
    contamin=yes)
  type: File?
  inputBinding:
    prefix: --indexco
- id: in_remove
  doc: ': remove unecessary intermediate files (default yes)'
  type: string?
  inputBinding:
    prefix: --remove
- id: in_proc
  doc: ": Number of processors for bowtie's use (default: 4)"
  type: long?
  inputBinding:
    prefix: --proc
- id: in_multi
  doc: ": Number of alignments to report. '-k' param of bowtie2 (default: 100)"
  type: long?
  inputBinding:
    prefix: --multi
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rapidStats.sh
