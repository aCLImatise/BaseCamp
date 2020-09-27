class: CommandLineTool
id: aadder_build.cwl
inputs:
- id: in_input_gff
  doc: '[string(s)]        Input GFF3 files or directory (.gz ok). Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --inputGFF
- id: in_index
  doc: '[string]                 Index directory. Mandatory option.'
  type: boolean
  inputBinding:
    prefix: --index
- id: in_acc_two_tax_a
  doc: '[string]            Accession-to-Taxonomy mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2taxa
- id: in_acc_two_eggnog
  doc: '[string]     Accession-to-EGGNOG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2eggnog
- id: in_acc_two_interpro_two_go
  doc: '[string]   Accession-to-INTERPRO2GO mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2interpro2go
- id: in_acc_two_kegg
  doc: '[string]         Accession-to-KEGG mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2kegg
- id: in_acc_two_seed
  doc: '[string]         Accession-to-SEED mapping file.'
  type: boolean
  inputBinding:
    prefix: --acc2seed
- id: in_extra_strict
  doc: 'When given an input directory, look inside every input file to check that
    it is indeed in GFF3 format. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --extraStrict
- id: in_verbose
  doc: 'Echo commandline options and be verbose. Default value: false.'
  type: boolean
  inputBinding:
    prefix: --verbose
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- aadder-build
