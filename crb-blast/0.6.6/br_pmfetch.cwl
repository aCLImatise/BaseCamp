class: CommandLineTool
id: br_pmfetch.rb.cwl
inputs:
- id: query
  doc: '"genome AND virus"  Query string for PubMed search'
  type: boolean
  inputBinding:
    prefix: --query
- id: title
  doc: '"mobile elements"   Title of the article to search'
  type: boolean
  inputBinding:
    prefix: --title
- id: journal
  doc: '"genome res"      Journal title to search'
  type: boolean
  inputBinding:
    prefix: --journal
- id: volume
  doc: '#                  Journal volume to search'
  type: boolean
  inputBinding:
    prefix: --volume
- id: issue
  doc: '#                   Journal issue to search'
  type: boolean
  inputBinding:
    prefix: --issue
- id: page
  doc: '#                    First page number of the article to search'
  type: boolean
  inputBinding:
    prefix: --page
- id: author
  doc: '"Altschul SF"      Author name to search'
  type: boolean
  inputBinding:
    prefix: --author
- id: mesh
  doc: '"SARS virus"         MeSH term to search'
  type: boolean
  inputBinding:
    prefix: --mesh
- id: format
  doc: Summary output format
  type: string
  inputBinding:
    prefix: --format
- id: pmid_list
  doc: Output only a list of PubMed IDs
  type: boolean
  inputBinding:
    prefix: --pmidlist
- id: ret_max
  doc: '#                  Number of articles to retrieve at the maximum'
  type: boolean
  inputBinding:
    prefix: --retmax
- id: ret_start
  doc: '#                Starting number of the articles to retrieve'
  type: boolean
  inputBinding:
    prefix: --retstart
- id: sort
  doc: +date             Sort method for the summary output
  type: string
  inputBinding:
    prefix: --sort
- id: rel_date
  doc: '#                 Search articles published within recent # days'
  type: boolean
  inputBinding:
    prefix: --reldate
- id: min_date
  doc: /MM/DD        Search articles published after the date
  type: string
  inputBinding:
    prefix: --mindate
- id: maxdate
  doc: /MM/DD        Search articles published before the date
  type: string
  inputBinding:
    prefix: --maxdate
- id: examples
  doc: Output examples, then exit
  type: boolean
  inputBinding:
    prefix: --examples
outputs: []
cwlVersion: v1.1
baseCommand:
- br_pmfetch.rb
