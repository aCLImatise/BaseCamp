class: CommandLineTool
id: pullseq.cwl
inputs:
- id: in_input
  doc: ',       Input fasta/fastq file (required)'
  type: boolean?
  inputBinding:
    prefix: --input
- id: in_names
  doc: ',       File of header id names to search for'
  type: boolean?
  inputBinding:
    prefix: --names
- id: in_names_stdin
  doc: ', Use STDIN for header id names'
  type: boolean?
  inputBinding:
    prefix: --names_stdin
- id: in_regex
  doc: ',       Regular expression to match (PERL compatible; always case-insensitive)'
  type: boolean?
  inputBinding:
    prefix: --regex
- id: in_min
  doc: ',         Minimum sequence length'
  type: boolean?
  inputBinding:
    prefix: --min
- id: in_max
  doc: ',         Maximum sequence length'
  type: boolean?
  inputBinding:
    prefix: --max
- id: in_length
  doc: ',      Sequence characters per line (default 50)'
  type: boolean?
  inputBinding:
    prefix: --length
- id: in_convert
  doc: ',     Convert input to fastq/fasta (e.g. if input is fastq, output will be
    fasta)'
  type: boolean?
  inputBinding:
    prefix: --convert
- id: in_quality
  doc: ',     ASCII code to use for fasta->fastq quality conversions'
  type: boolean?
  inputBinding:
    prefix: --quality
- id: in_excluded
  doc: ',    Exclude the header id names in the list (-n)'
  type: boolean?
  inputBinding:
    prefix: --excluded
- id: in_count
  doc: ",       Just count the possible output, but don't write it"
  type: boolean?
  inputBinding:
    prefix: --count
- id: in_verbose
  doc: ',     Print extra details during the run'
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_cat
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_names_to_select_from_stdin
  doc: ''
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- pullseq
