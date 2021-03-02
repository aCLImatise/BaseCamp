class: CommandLineTool
id: cgpVCFSplit.pl.cwl
inputs:
- id: in_line_count
  doc: (-l)       The number of mutant lines to put in each split file.
  type: boolean?
  inputBinding:
    prefix: --linecount
- id: in_no_head
  doc: (-n)       Switch to ignore the header of the file when creating split files.
  type: boolean?
  inputBinding:
    prefix: --nohead
- id: in_file
  doc: (-i)       The file to split.
  type: boolean?
  inputBinding:
    prefix: --file
- id: in_outfile
  doc: (-o)       The base output file name will be <fileName>.[1-n] where n is the
    number of files created by the split.
  type: boolean?
  inputBinding:
    prefix: --outFile
- id: in_skip_validate
  doc: (-s)   Skip the validation step.
  type: boolean?
  inputBinding:
    prefix: --skip-validate
- id: in_f
  doc: ''
  type: string?
  inputBinding:
    prefix: -f
- id: in_l
  doc: ''
  type: long?
  inputBinding:
    prefix: -l
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cgpVCFSplit.pl
