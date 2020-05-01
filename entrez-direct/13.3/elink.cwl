#!/usr/bin/env cwl-runner

baseCommand:
- elink
class: CommandLineTool
cwlVersion: v1.0
id: elink
inputs:
- doc: Neighbors or links
  id: neighbor
  inputBinding:
    position: 0
  type: string
- doc: Neighbors with computed similarity scores
  id: neighbor_score
  inputBinding:
    position: 1
  type: string
- doc: All links available
  id: a_check
  inputBinding:
    position: 2
  type: string
- doc: Existence of neighbors
  id: n_check
  inputBinding:
    position: 3
  type: string
- doc: Existence of external links (LinkOuts)
  id: l_check
  inputBinding:
    position: 4
  type: string
- doc: Non-library LinkOut providers
  id: l_links
  inputBinding:
    position: 5
  type: string
- doc: All LinkOut providers
  id: l_links_lib
  inputBinding:
    position: 6
  type: string
- doc: Primary LinkOut provider, or URL for single UID with -mode ref
  id: pr_links
  inputBinding:
    position: 7
  type: string
- doc: Neighbors in same database
  id: related
  inputBinding:
    prefix: -related
  type: boolean
- doc: Links in different database
  id: target
  inputBinding:
    prefix: -target
  type: boolean
- doc: Link name (e.g., pubmed_protein_refseq, pubmed_pubmed_citedin, pubmed_pubmed_refs)
  id: name
  inputBinding:
    prefix: -name
  type: boolean
- doc: Database name
  id: db
  inputBinding:
    prefix: -db
  type: boolean
- doc: Unique identifier(s)
  id: id
  inputBinding:
    prefix: -id
  type: boolean
- doc: Command type (returns eLinkResult XML)
  id: cmd
  inputBinding:
    prefix: -cmd
  type: boolean
- doc: "\"ref\" uses LinkOut provider's web site"
  id: mode
  inputBinding:
    prefix: -mode
  type: boolean
- doc: Name of LinkOut provider
  id: holding
  inputBinding:
    prefix: -holding
  type: boolean
- doc: References to this paper
  id: cited
  inputBinding:
    prefix: -cited
  type: boolean
- doc: Publication reference list
  id: cites
  inputBinding:
    prefix: -cites
  type: boolean
- doc: Bypass Entrez history mechanism
  id: batch
  inputBinding:
    prefix: -batch
  type: boolean
- doc: Alias for query step
  id: label
  inputBinding:
    prefix: -label
  type: boolean
