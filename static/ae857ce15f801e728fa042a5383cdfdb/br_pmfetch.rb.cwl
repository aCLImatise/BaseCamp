class: CommandLineTool
id: br_pmfetch.rb.cwl
inputs:
- id: in_query
  doc: '"genome AND virus"  Query string for PubMed search'
  type: boolean
  inputBinding:
    prefix: --query
- id: in_title
  doc: '"mobile elements"   Title of the article to search'
  type: boolean
  inputBinding:
    prefix: --title
- id: in_journal
  doc: '"genome res"      Journal title to search'
  type: boolean
  inputBinding:
    prefix: --journal
- id: in_volume
  doc: '#                  Journal volume to search'
  type: boolean
  inputBinding:
    prefix: --volume
- id: in_issue
  doc: '#                   Journal issue to search'
  type: boolean
  inputBinding:
    prefix: --issue
- id: in_page
  doc: '#                    First page number of the article to search'
  type: boolean
  inputBinding:
    prefix: --page
- id: in_author
  doc: '"Altschul SF"      Author name to search'
  type: boolean
  inputBinding:
    prefix: --author
- id: in_mesh
  doc: '"SARS virus"         MeSH term to search'
  type: boolean
  inputBinding:
    prefix: --mesh
- id: in_format
  doc: Summary output format
  type: string
  inputBinding:
    prefix: --format
- id: in_pmid_list
  doc: Output only a list of PubMed IDs
  type: boolean
  inputBinding:
    prefix: --pmidlist
- id: in_ret_max
  doc: '#                  Number of articles to retrieve at the maximum'
  type: boolean
  inputBinding:
    prefix: --retmax
- id: in_ret_start
  doc: '#                Starting number of the articles to retrieve'
  type: boolean
  inputBinding:
    prefix: --retstart
- id: in_sort
  doc: +date             Sort method for the summary output
  type: string
  inputBinding:
    prefix: --sort
- id: in_rel_date
  doc: '#                 Search articles published within recent # days'
  type: boolean
  inputBinding:
    prefix: --reldate
- id: in_min_date
  doc: Search articles published after the date
  type: string
  inputBinding:
    prefix: --mindate
- id: in_maxdate
  doc: Search articles published before the date
  type: string
  inputBinding:
    prefix: --maxdate
- id: in_examples
  doc: Output examples, then exit
  type: boolean
  inputBinding:
    prefix: --examples
- id: in_options_dot_dot_dot
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- br_pmfetch.rb
