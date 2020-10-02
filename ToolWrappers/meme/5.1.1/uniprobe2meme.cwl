class: CommandLineTool
id: uniprobe2meme.cwl
inputs:
- id: in_rna
  doc: output an RNA database instead of a DNA database.
  type: boolean
  inputBinding:
    prefix: -rna
- id: in_skip
  doc: skip this ID (may be repeated)
  type: string
  inputBinding:
    prefix: -skip
- id: in_num_seqs
  doc: "assume frequencies based on this many\nsequences; default: 20"
  type: long
  inputBinding:
    prefix: -numseqs
- id: in_truncate_names
  doc: truncate motif names at first underscore
  type: boolean
  inputBinding:
    prefix: -truncate_names
- id: in_numbers
  doc: use numbers instead of strings as motif names
  type: boolean
  inputBinding:
    prefix: -numbers
- id: in_bg
  doc: "file with background frequencies of letters;\ndefault: uniform background"
  type: File
  inputBinding:
    prefix: -bg
- id: in_pseudo
  doc: "add <total pseudocounts> times letter\nbackground to each frequency; default:\
    \ 0"
  type: long
  inputBinding:
    prefix: -pseudo
- id: in_log_odds
  doc: "print log-odds matrix, too;\ndefault: print frequency matrix only"
  type: boolean
  inputBinding:
    prefix: -logodds
- id: in_url
  doc: "website for the motif; The untruncated ID is\nsubstituted for MOTIF_NAME;\
    \ default: no url"
  type: string
  inputBinding:
    prefix: -url
- id: in_sg
  doc: "TSV file with motif name, ID and source publication\nin columns 1, 2 & 6 (+1\
    \ to column# if first blank)"
  type: File
  inputBinding:
    prefix: -sg
- id: in_sp
  doc: "only consider lines in <sg_file_name> that match\nthis source publication;\
    \ default: use all lines"
  type: string
  inputBinding:
    prefix: -sp
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- uniprobe2meme
