#!/usr/bin/env cwl-runner

baseCommand:
- efilter
class: CommandLineTool
cwlVersion: v1.0
id: efilter
inputs:
- doc: Query string
  id: query
  inputBinding:
    prefix: -query
  type: boolean
- doc: Result presentation order
  id: sort
  inputBinding:
    prefix: -sort
  type: boolean
- doc: Number of days in the past
  id: days
  inputBinding:
    prefix: -days
  type: boolean
- doc: Date field abbreviation
  id: date_type
  inputBinding:
    prefix: -datetype
  type: boolean
- doc: Start of date range
  id: min_date
  inputBinding:
    prefix: -mindate
  type: boolean
- doc: End of date range
  id: maxdate
  inputBinding:
    prefix: -maxdate
  type: boolean
- doc: Query words individually in field
  id: field
  inputBinding:
    prefix: -field
  type: boolean
- doc: Query overlapping word pairs
  id: pairs
  inputBinding:
    prefix: -pairs
  type: boolean
- doc: Correct misspellings in query
  id: spell
  inputBinding:
    prefix: -spell
  type: boolean
- doc: abstract, clinical, english, free, historical, journal, medline, preprint,
    published, review, structured
  id: pub
  inputBinding:
    prefix: -pub
  type: boolean
- doc: pnas, "j bacteriol", ...
  id: journal
  inputBinding:
    prefix: -journal
  type: boolean
- doc: last_week, last_month, last_year, prev_years
  id: released
  inputBinding:
    prefix: -released
  type: boolean
- doc: usa:minnesota, united_kingdom, "pacific ocean", ...
  id: country
  inputBinding:
    prefix: -country
  type: boolean
- doc: gene, mrna, cds, mat_peptide, ...
  id: feature
  inputBinding:
    prefix: -feature
  type: boolean
- doc: mitochondrion, chloroplast, plasmid, plastid
  id: location
  inputBinding:
    prefix: -location
  type: boolean
- doc: genomic, mrna, trna, rrna, ncrna
  id: molecule
  inputBinding:
    prefix: -molecule
  type: boolean
- doc: animals, archaea, bacteria, eukaryotes, fungi, human, insects, mammals, plants,
    prokaryotes, protists, rodents, viruses
  id: organism
  inputBinding:
    prefix: -organism
  type: boolean
- doc: genbank, insd, pdb, pir, refseq, swissprot, tpa
  id: source
  inputBinding:
    prefix: -source
  type: boolean
- doc: alive
  id: status
  inputBinding:
    prefix: -status
  type: boolean
- doc: coding, pseudo
  id: type
  inputBinding:
    prefix: -type
  type: boolean
- doc: acceptor, donor, frameshift, indel, intron, missense, nonsense, synonymous
  id: class
  inputBinding:
    prefix: -class
  type: boolean
- doc: pathway
  id: kind
  inputBinding:
    prefix: -kind
  type: boolean
- doc: reactome, wikipathways
  id: pathway
  inputBinding:
    prefix: -pathway
  type: boolean
- doc: Alias for query step
  id: label
  inputBinding:
    prefix: -label
  type: boolean
