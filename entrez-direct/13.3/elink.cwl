class: CommandLineTool
id: elink.cwl
inputs:
- id: neighbor
  doc: Neighbors or links
  type: string
  inputBinding:
    position: 0
- id: neighbor_score
  doc: Neighbors with computed similarity scores
  type: string
  inputBinding:
    position: 1
- id: a_check
  doc: All links available
  type: string
  inputBinding:
    position: 2
- id: n_check
  doc: Existence of neighbors
  type: string
  inputBinding:
    position: 3
- id: l_check
  doc: Existence of external links (LinkOuts)
  type: string
  inputBinding:
    position: 4
- id: l_links
  doc: Non-library LinkOut providers
  type: string
  inputBinding:
    position: 5
- id: l_links_lib
  doc: All LinkOut providers
  type: string
  inputBinding:
    position: 6
- id: pr_links
  doc: Primary LinkOut provider, or URL for single UID with -mode ref
  type: string
  inputBinding:
    position: 7
- id: related
  doc: Neighbors in same database
  type: boolean
  inputBinding:
    prefix: -related
- id: target
  doc: Links in different database
  type: boolean
  inputBinding:
    prefix: -target
- id: name
  doc: Link name (e.g., pubmed_protein_refseq, pubmed_pubmed_citedin, pubmed_pubmed_refs)
  type: boolean
  inputBinding:
    prefix: -name
- id: db
  doc: Database name
  type: boolean
  inputBinding:
    prefix: -db
- id: id
  doc: Unique identifier(s)
  type: boolean
  inputBinding:
    prefix: -id
- id: cmd
  doc: Command type (returns eLinkResult XML)
  type: boolean
  inputBinding:
    prefix: -cmd
- id: mode
  doc: "\"ref\" uses LinkOut provider's web site"
  type: boolean
  inputBinding:
    prefix: -mode
- id: holding
  doc: Name of LinkOut provider
  type: boolean
  inputBinding:
    prefix: -holding
- id: cited
  doc: References to this paper
  type: boolean
  inputBinding:
    prefix: -cited
- id: cites
  doc: Publication reference list
  type: boolean
  inputBinding:
    prefix: -cites
- id: batch
  doc: Bypass Entrez history mechanism
  type: boolean
  inputBinding:
    prefix: -batch
- id: label
  doc: Alias for query step
  type: boolean
  inputBinding:
    prefix: -label
outputs: []
cwlVersion: v1.1
baseCommand:
- elink
