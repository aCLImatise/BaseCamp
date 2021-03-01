class: CommandLineTool
id: beeml2meme.cwl
inputs:
- id: in_bg
  doc: "file with background frequencies of letters\ndefault: uniform background"
  type: File?
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long?
  inputBinding:
    prefix: -pseudo
- id: in_sg
  doc: "specifify a file containing the contents of:\nhttp://the_brain.bwh.harvard.edu/uniprobe/browse.php\n\
    and use the uniprobe ID as the alternate name"
  type: File?
  inputBinding:
    prefix: -sg
- id: in_print_logodds_matrix
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean?
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The UNIPROBE ID is\nsubstituted for MOTIF_NAME; default:\
    \ no url\n"
  type: string?
  inputBinding:
    prefix: -url
- id: in_add
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_and
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_default
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_http
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_matrix_file
  doc: ''
  type: File
  inputBinding:
    position: 0
- id: in_print
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_specifi_fy
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_substituted
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_website
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_a
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_for
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_var_17
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_total_pseudo_counts
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_use
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_with
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_motif_name
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_background
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_matrix
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_times
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_containing
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_frequencies
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_letter
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_motif
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_unipro_be
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_id
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_of
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_the
  doc: ''
  type: string
  inputBinding:
    position: 4
- id: in_as
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_contents
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_letters
  doc: ''
  type: string
  inputBinding:
    position: 5
- id: in_alternate
  doc: ''
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- beeml2meme
