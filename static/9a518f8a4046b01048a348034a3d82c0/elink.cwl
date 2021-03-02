class: CommandLineTool
id: elink.cwl
inputs:
- id: in_related
  doc: Neighbors in same database
  type: boolean?
  inputBinding:
    prefix: -related
- id: in_target
  doc: Links in different database
  type: boolean?
  inputBinding:
    prefix: -target
- id: in_name
  doc: Link name (e.g., pubmed_protein_refseq, pubmed_pubmed_citedin, pubmed_pubmed_refs)
  type: boolean?
  inputBinding:
    prefix: -name
- id: in_db
  doc: Database name
  type: boolean?
  inputBinding:
    prefix: -db
- id: in_id
  doc: Unique identifier(s)
  type: boolean?
  inputBinding:
    prefix: -id
- id: in_cmd
  doc: Command type (returns eLinkResult XML)
  type: boolean?
  inputBinding:
    prefix: -cmd
- id: in_holding
  doc: Name of LinkOut provider
  type: boolean?
  inputBinding:
    prefix: -holding
- id: in_cited
  doc: References to this paper
  type: boolean?
  inputBinding:
    prefix: -cited
- id: in_cites
  doc: Publication reference list
  type: boolean?
  inputBinding:
    prefix: -cites
- id: in_batch
  doc: Bypass Entrez history mechanism
  type: boolean?
  inputBinding:
    prefix: -batch
- id: in_neighbor
  doc: Neighbors or links
  type: string
  inputBinding:
    position: 0
- id: in_neighbor_score
  doc: Neighbors with computed similarity scores
  type: string
  inputBinding:
    position: 1
- id: in_a_check
  doc: All links available
  type: string
  inputBinding:
    position: 2
- id: in_n_check
  doc: Existence of neighbors
  type: string
  inputBinding:
    position: 3
- id: in_l_check
  doc: Existence of external links (LinkOuts)
  type: string
  inputBinding:
    position: 4
- id: in_l_links
  doc: Non-library LinkOut providers
  type: string
  inputBinding:
    position: 5
- id: in_l_links_lib
  doc: All LinkOut providers
  type: string
  inputBinding:
    position: 6
- id: in_pr_links
  doc: Primary LinkOut provider
  type: string
  inputBinding:
    position: 7
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- elink
