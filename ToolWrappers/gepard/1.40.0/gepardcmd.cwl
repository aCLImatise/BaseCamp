class: CommandLineTool
id: gepardcmd.cwl
inputs:
- id: in_seq_one
  doc: ':        first sequence file'
  type: boolean
  inputBinding:
    prefix: -seq1
- id: in_seq_two
  doc: ':        second sequence file'
  type: boolean
  inputBinding:
    prefix: -seq2
- id: in_matrix
  doc: ':      substitution matrix file'
  type: boolean
  inputBinding:
    prefix: -matrix
- id: in_outfile
  doc: ':     output file name'
  type: File
  inputBinding:
    prefix: -outfile
- id: in_maxwidth
  doc: ':    maximum width of the generated image (default: 750)'
  type: boolean
  inputBinding:
    prefix: -maxwidth
- id: in_max_height
  doc: ':   maximum height of the generated image (default: 750)'
  type: boolean
  inputBinding:
    prefix: -maxheight
- id: in_zoom
  doc: ':        specify a zoom factor for the dotplot'
  type: boolean
  inputBinding:
    prefix: -zoom
- id: in_format
  doc: ":      output format, one of:  'png', 'jpg', 'bmp' (default:PNG)"
  type: boolean
  inputBinding:
    prefix: -format
- id: in_second_comp
  doc: use complementary of second sequence
  type: boolean
  inputBinding:
    prefix: -secondcomp
- id: in_word
  doc: ':        word length for suffix array mode (default: 10)'
  type: boolean
  inputBinding:
    prefix: -word
- id: in_window
  doc: ':      window size for ordinary dotplot mode (default: 0)'
  type: boolean
  inputBinding:
    prefix: -window
- id: in_sa_file
  doc: load suffix array from file instead of calculating it
  type: boolean
  inputBinding:
    prefix: -safile
- id: in_sa_second_seq
  doc: the suffix array is for the second sequence
  type: boolean
  inputBinding:
    prefix: -sasecondseq
- id: in_from_one
  doc: coordinates of first sequence
  type: boolean
  inputBinding:
    prefix: -from1
- id: in_from_two
  doc: coordinates of second sequence
  type: boolean
  inputBinding:
    prefix: -from2
- id: in_lower
  doc: lower limit for dot intensity (in %)
  type: boolean
  inputBinding:
    prefix: -lower
- id: in_upper
  doc: upper limit for dot intensity (in %)
  type: boolean
  inputBinding:
    prefix: -upper
- id: in_greyscale
  doc: greyscale start value (in %)
  type: boolean
  inputBinding:
    prefix: -greyscale
- id: in_silent
  doc: generate no output (except error messages)
  type: boolean
  inputBinding:
    prefix: -silent
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outfile
  doc: ':     output file name'
  type: File
  outputBinding:
    glob: $(inputs.in_outfile)
cwlVersion: v1.1
baseCommand:
- gepardcmd
