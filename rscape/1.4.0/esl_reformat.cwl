class: CommandLineTool
id: ../../../esl_reformat.cwl
inputs:
- id: convert_dna_alphabet
  doc: ': convert to DNA alphabet (U->T)'
  type: boolean
  inputBinding:
    prefix: -d
- id: convert_lower_case
  doc: ': convert to lower case'
  type: boolean
  inputBinding:
    prefix: -l
- id: remove_dna_iupac
  doc: ': remove DNA IUPAC codes; convert ambig chars to N'
  type: boolean
  inputBinding:
    prefix: -n
- id: send_output_file
  doc: ': send output to file <f>, not stdout'
  type: string
  inputBinding:
    prefix: -o
- id: convert_rna_alphabet
  doc: ': convert to RNA alphabet (T->U)'
  type: boolean
  inputBinding:
    prefix: -r
- id: convert_upper_case
  doc: ': convert to upper case'
  type: boolean
  inputBinding:
    prefix: -u
- id: convert_noniupac_chars
  doc: ': convert non-IUPAC chars (e.g. X) in DNA to N'
  type: boolean
  inputBinding:
    prefix: -x
- id: gap_sym
  doc: ': convert all gaps to character <s>'
  type: string
  inputBinding:
    prefix: --gapsym
- id: in_format
  doc: ': input sequence file is in format <s>'
  type: string
  inputBinding:
    prefix: --informat
- id: min_gap
  doc: ': remove columns containing all gaps (seqfile=MSA)'
  type: boolean
  inputBinding:
    prefix: --mingap
- id: keep_rf
  doc: ': with --mingap, keep all nongap #=GC RF columns'
  type: boolean
  inputBinding:
    prefix: --keeprf
- id: no_gap
  doc: ': remove columns containing any gaps (seqfile=MSA)'
  type: boolean
  inputBinding:
    prefix: --nogap
- id: w_us_sify
  doc: ': convert old RNA structure markup lines to WUSS'
  type: boolean
  inputBinding:
    prefix: --wussify
- id: de_wuss
  doc: ': convert WUSS RNA structure markup to old format'
  type: boolean
  inputBinding:
    prefix: --dewuss
- id: full_wuss
  doc: ': convert simple WUSS notation to full (output) WUSS'
  type: boolean
  inputBinding:
    prefix: --fullwuss
- id: ignore
  doc: ': ignore input seq characters listed in string <s>'
  type: string
  inputBinding:
    prefix: --ignore
- id: accept_x
  doc: ': accept input seq chars in string <s> as X'
  type: string
  inputBinding:
    prefix: --acceptx
- id: rename
  doc: ': rename and number each sequence <s>.<n>'
  type: string
  inputBinding:
    prefix: --rename
- id: replace
  doc: ': <s> = <s1>:<s2> replace characters in <s1> with those in <s2>'
  type: string
  inputBinding:
    prefix: --replace
- id: small
  doc: ': use minimal RAM, input must be pfam, output must be afa or pfam'
  type: boolean
  inputBinding:
    prefix: --small
- id: id_map
  doc: ': if format is hmmpgmd, put the id map into file <s>'
  type: string
  inputBinding:
    prefix: --id_map
- id: options
  doc: ''
  type: boolean
  inputBinding:
    prefix: -options
outputs: []
cwlVersion: v1.1
baseCommand:
- esl-reformat
