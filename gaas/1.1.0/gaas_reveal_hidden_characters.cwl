#!/usr/bin/env cwl-runner

baseCommand:
- gaas_reveal_hidden_characters.pl
class: CommandLineTool
cwlVersion: v1.0
id: gaas_reveal_hidden_characters.pl
inputs:
- doc: Input file containing DNA.
  id: in_file
  inputBinding:
    prefix: --infile
  type: string
- doc: Specify extra information/description you want for the character. Choice must
    be among <DEC>, <OCT>, <HEX>, <BIN>, <Symbol_HTML>, <Number_HTML>, <Name> and
    <Description>. Whithout the <> characters. The option is case insensitive. By
    default it is <Description>.
  id: desc
  inputBinding:
    prefix: --desc
  type: string
- doc: '[OPTIONAL] Output file. If no output is specified, the result is written to
    STDOUT.'
  id: output
  inputBinding:
    prefix: --output
  type: string
