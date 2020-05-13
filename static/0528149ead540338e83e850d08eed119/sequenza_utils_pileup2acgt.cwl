class: CommandLineTool
id: sequenza_utils_pileup2acgt.cwl
inputs:
- id: m_pile_up
  doc: Name of the input mpileup (SAMtools) file. If the filename ends in .gz it will
    be opened in gzip mode. If the file name is - it will be read from STDIN.
  type: string
  inputBinding:
    prefix: --mpileup
- id: output
  doc: Name of the output file. To use gzip compression name the file ending in .gz.
    Default STDOUT.
  type: string
  inputBinding:
    prefix: --output
- id: n
  doc: The minimum required read depth on a position to test for mutation.
  type: string
  inputBinding:
    prefix: -n
- id: q_limit
  doc: Minimum nucleotide quality score filter.
  type: string
  inputBinding:
    prefix: --qlimit
- id: no_end
  doc: Discard the base located at the end of the read
  type: boolean
  inputBinding:
    prefix: --no-end
- id: no_start
  doc: Discard the base located at the start of the read
  type: boolean
  inputBinding:
    prefix: --no-start
- id: q_format
  doc: Quality format, options are "sanger" or "illumina". This will add an offset
    of 33 or 64 respectively to the qlimit value.
  type: string
  inputBinding:
    prefix: --qformat
outputs: []
cwlVersion: v1.1
baseCommand:
- sequenza-utils
- pileup2acgt
