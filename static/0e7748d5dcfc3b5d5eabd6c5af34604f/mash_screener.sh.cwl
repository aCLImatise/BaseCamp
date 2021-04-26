class: CommandLineTool
id: mash_screener.sh.cwl
inputs:
- id: in_i
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -i
- id: in_o
  doc: directory (optional)
  type: Directory?
  inputBinding:
    prefix: -o
- id: in_to_screen_fasta
  doc: to screen (.fasta)
  type: string?
  inputBinding:
    prefix: -d
- id: in_name
  doc: name
  type: string?
  inputBinding:
    prefix: -s
- id: in_name_optional_unset
  doc: name (optional). If unset, samples will be gathered in NO_GROUP group
  type: string?
  inputBinding:
    prefix: -g
- id: in_one
  doc: corresponding to paired-end R1
  type: long?
  inputBinding:
    prefix: '-1'
- id: in_two
  doc: corresponding to paired-end R2
  type: long?
  inputBinding:
    prefix: '-2'
- id: in_identity_value_retieve
  doc: identity value to retieve sequence ids with at least this value (default 0.9)
  type: double?
  inputBinding:
    prefix: -f
- id: in_winner_takes_it
  doc: winner takes it all
  type: string?
  inputBinding:
    prefix: -w
- id: in_of_threads
  doc: of threads
  type: long?
  inputBinding:
    prefix: -T
- id: in_usage_message
  doc: usage message
  type: string?
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/plasmidid:1.6.5--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- mash_screener.sh
