class: CommandLineTool
id: tsvToVcf.pl.cwl
inputs:
- id: in_tsv_file_containing
  doc: tsv file containing the snv_alignment
  type: File
  inputBinding:
    prefix: -t
- id: in_directory_containing_files
  doc: directory containing vcf files from freebayes
  type: Directory
  inputBinding:
    prefix: -v
- id: in_directory_new_files
  doc: directory the new vcf files will be output to
  type: Directory
  inputBinding:
    prefix: -d
- id: in_destination
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_directory
  doc: ''
  type: Directory
  inputBinding:
    position: 0
- id: in_containing
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_new
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_vcf
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_files
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_from
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_will
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_be
  doc: ''
  type: string
  inputBinding:
    position: 6
- id: in_output
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_directory_new_files
  doc: directory the new vcf files will be output to
  type: Directory
  outputBinding:
    glob: $(inputs.in_directory_new_files)
cwlVersion: v1.1
baseCommand:
- tsvToVcf.pl
