class: CommandLineTool
id: pullseq.cwl
inputs:
- id: input
  doc: ',       Input fasta/fastq file (required)'
  type: boolean
  inputBinding:
    prefix: --input
- id: names
  doc: ',       File of header id names to search for'
  type: boolean
  inputBinding:
    prefix: --names
- id: names_stdin
  doc: ', Use STDIN for header id names'
  type: boolean
  inputBinding:
    prefix: --names_stdin
- id: regex
  doc: ',       Regular expression to match (PERL compatible; always case-insensitive)'
  type: boolean
  inputBinding:
    prefix: --regex
- id: min
  doc: ',         Minimum sequence length'
  type: boolean
  inputBinding:
    prefix: --min
- id: max
  doc: ',         Maximum sequence length'
  type: boolean
  inputBinding:
    prefix: --max
- id: length
  doc: ',      Sequence characters per line (default 50)'
  type: boolean
  inputBinding:
    prefix: --length
- id: convert
  doc: ',     Convert input to fastq/fasta (e.g. if input is fastq, output will be
    fasta)'
  type: boolean
  inputBinding:
    prefix: --convert
- id: quality
  doc: ',     ASCII code to use for fasta->fastq quality conversions'
  type: boolean
  inputBinding:
    prefix: --quality
- id: excluded
  doc: ',    Exclude the header id names in the list (-n)'
  type: boolean
  inputBinding:
    prefix: --excluded
- id: count
  doc: ",       Just count the possible output, but don't write it"
  type: boolean
  inputBinding:
    prefix: --count
- id: verbose
  doc: ',     Print extra details during the run'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs: []
cwlVersion: v1.1
baseCommand:
- pullseq
