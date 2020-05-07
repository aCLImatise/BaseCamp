class: CommandLineTool
id: gaas_reveal_hidden_characters.pl.cwl
inputs:
- id: in_file
  doc: Input file containing DNA.
  type: string
  inputBinding:
    prefix: --infile
- id: desc
  doc: Specify extra information/description you want for the character. Choice must
    be among <DEC>, <OCT>, <HEX>, <BIN>, <Symbol_HTML>, <Number_HTML>, <Name> and
    <Description>. Whithout the <> characters. The option is case insensitive. By
    default it is <Description>.
  type: string
  inputBinding:
    prefix: --desc
- id: output
  doc: '[OPTIONAL] Output file. If no output is specified, the result is written to
    STDOUT.'
  type: string
  inputBinding:
    prefix: --output
outputs: []
cwlVersion: v1.1
baseCommand:
- gaas_reveal_hidden_characters.pl
