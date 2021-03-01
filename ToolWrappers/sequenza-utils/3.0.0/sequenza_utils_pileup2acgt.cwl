class: CommandLineTool
id: sequenza_utils_pileup2acgt.cwl
inputs:
- id: in_m_pile_up
  doc: "Name of the input mpileup (SAMtools) file. If the\nfilename ends in .gz it\
    \ will be opened in gzip mode.\nIf the file name is - it will be read from STDIN."
  type: File?
  inputBinding:
    prefix: --mpileup
- id: in_output
  doc: "Name of the output file. To use gzip compression name\nthe file ending in\
    \ .gz. Default STDOUT."
  type: File?
  inputBinding:
    prefix: --output
- id: in_minimum_required_read
  doc: "The minimum required read depth on a position to test\nfor mutation."
  type: string?
  inputBinding:
    prefix: -n
- id: in_q_limit
  doc: Minimum nucleotide quality score filter.
  type: string?
  inputBinding:
    prefix: --qlimit
- id: in_no_end
  doc: Discard the base located at the end of the read
  type: boolean?
  inputBinding:
    prefix: --no-end
- id: in_no_start
  doc: Discard the base located at the start of the read
  type: boolean?
  inputBinding:
    prefix: --no-start
- id: in_q_format
  doc: "Quality format, options are \"sanger\" or \"illumina\".\nThis will add an\
    \ offset of 33 or 64 respectively to\nthe qlimit value.\n"
  type: long?
  inputBinding:
    prefix: --qformat
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output
  doc: "Name of the output file. To use gzip compression name\nthe file ending in\
    \ .gz. Default STDOUT."
  type: File?
  outputBinding:
    glob: $(inputs.in_output)
hints: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- pileup2acgt
