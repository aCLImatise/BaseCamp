class: CommandLineTool
id: ganon_get_seq_info.sh.cwl
inputs:
- id: in_input_file_one
  doc: '[str] input file with one accessions per line (use - to read from STDIN)'
  type: boolean?
  inputBinding:
    prefix: -i
- id: in_list_accesions_comma
  doc: '[str] list of accesions (comma separated)'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in__ncbiapikey
  doc: '[str] ncbi_api_key'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_entries_even_nothing
  doc: all entries even if nothing is retrieved (report "na")
  type: string?
  inputBinding:
    prefix: -k
- id: in_sequence_length_taxid
  doc: sequence length and taxid requests
  type: long?
  inputBinding:
    prefix: -s
- id: in_assembly_accession_latest
  doc: assembly accession (only latest for the sequence accession)
  type: string?
  inputBinding:
    prefix: -a
- id: in_assembly_name
  doc: assembly name
  type: string?
  inputBinding:
    prefix: -m
- id: in_sequence_accession_unavailable
  doc: sequence accession for unavailable asssembly accessions/names (by default report
    "na")
  type: string?
  inputBinding:
    prefix: -r
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/ganon:0.4.0--py38hb45e0f6_0
cwlVersion: v1.1
baseCommand:
- ganon-get-seq-info.sh
