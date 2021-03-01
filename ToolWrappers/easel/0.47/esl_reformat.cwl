class: CommandLineTool
id: esl_reformat.cwl
inputs:
- id: in_convert_dna_ut
  doc: ': convert to DNA alphabet (U->T)'
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_convert_lower_case
  doc: ': convert to lower case'
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_remove_iupac_codes
  doc: ': remove DNA IUPAC codes; convert ambig chars to N'
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  inputBinding:
    prefix: -o
- id: in_convert_rna_alphabet
  doc: ': convert to RNA alphabet (T->U)'
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_convert_upper_case
  doc: ': convert to upper case'
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_convert_noniupac_chars
  doc: ': convert non-IUPAC chars (e.g. X) in DNA to N'
  type: boolean?
  inputBinding:
    prefix: -x
- id: in_gap_sym
  doc: ': convert all gaps to character <s>'
  type: string?
  inputBinding:
    prefix: --gapsym
- id: in_in_format
  doc: ': input sequence file is in format <s>'
  type: File?
  inputBinding:
    prefix: --informat
- id: in_min_gap
  doc: ': remove columns containing all gaps (seqfile=MSA)'
  type: boolean?
  inputBinding:
    prefix: --mingap
- id: in_keep_rf
  doc: ': with --mingap, keep all nongap #=GC RF columns'
  type: boolean?
  inputBinding:
    prefix: --keeprf
- id: in_no_gap
  doc: ': remove columns containing any gaps (seqfile=MSA)'
  type: boolean?
  inputBinding:
    prefix: --nogap
- id: in_w_us_sify
  doc: ': convert old RNA structure markup lines to WUSS'
  type: boolean?
  inputBinding:
    prefix: --wussify
- id: in_de_wuss
  doc: ': convert WUSS RNA structure markup to old format'
  type: boolean?
  inputBinding:
    prefix: --dewuss
- id: in_full_wuss
  doc: ': convert simple WUSS notation to full (output) WUSS'
  type: boolean?
  inputBinding:
    prefix: --fullwuss
- id: in_ignore
  doc: ': ignore input seq characters listed in string <s>'
  type: string?
  inputBinding:
    prefix: --ignore
- id: in_accept_x
  doc: ': accept input seq chars in string <s> as X'
  type: string?
  inputBinding:
    prefix: --acceptx
- id: in_rename
  doc: ': rename and number each sequence <s>.<n>'
  type: long?
  inputBinding:
    prefix: --rename
- id: in_replace
  doc: ': <s> = <s1>:<s2> replace characters in <s1> with those in <s2>'
  type: long?
  inputBinding:
    prefix: --replace
- id: in_small
  doc: ': use minimal RAM, input must be pfam, output must be afa or pfam'
  type: boolean?
  inputBinding:
    prefix: --small
- id: in_id_map
  doc: ': if format is hmmpgmd, put the id map into file <s>'
  type: File?
  inputBinding:
    prefix: --id_map
- id: in_options
  doc: ''
  type: boolean?
  inputBinding:
    prefix: -options
- id: in_fast_a
  doc: 'a2m        '
  type: string
  inputBinding:
    position: 0
- id: in_hmm_pg_md
  doc: 'afa        '
  type: string
  inputBinding:
    position: 1
- id: in_clustal
  doc: clustallike
  type: string
  inputBinding:
    position: 2
- id: in_pfam
  doc: 'phylip     '
  type: string
  inputBinding:
    position: 3
- id: in_phylip_s
  doc: 'psiblast   '
  type: string
  inputBinding:
    position: 4
- id: in_selex
  doc: 'stockholm  '
  type: string
  inputBinding:
    position: 5
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_send_output_file
  doc: ': send output to file <f>, not stdout'
  type: File?
  outputBinding:
    glob: $(inputs.in_send_output_file)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/easel:0.47--h516909a_0
cwlVersion: v1.1
baseCommand:
- esl-reformat
