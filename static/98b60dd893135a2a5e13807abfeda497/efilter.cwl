class: CommandLineTool
id: efilter.cwl
inputs:
- id: query
  doc: Query string
  type: boolean
  inputBinding:
    prefix: -query
- id: sort
  doc: Result presentation order
  type: boolean
  inputBinding:
    prefix: -sort
- id: days
  doc: Number of days in the past
  type: boolean
  inputBinding:
    prefix: -days
- id: date_type
  doc: Date field abbreviation
  type: boolean
  inputBinding:
    prefix: -datetype
- id: min_date
  doc: Start of date range
  type: boolean
  inputBinding:
    prefix: -mindate
- id: maxdate
  doc: End of date range
  type: boolean
  inputBinding:
    prefix: -maxdate
- id: field
  doc: Query words individually in field
  type: boolean
  inputBinding:
    prefix: -field
- id: pairs
  doc: Query overlapping word pairs
  type: boolean
  inputBinding:
    prefix: -pairs
- id: spell
  doc: Correct misspellings in query
  type: boolean
  inputBinding:
    prefix: -spell
- id: pub
  doc: abstract, clinical, english, free, historical, journal, medline, preprint,
    published, review, structured
  type: boolean
  inputBinding:
    prefix: -pub
- id: journal
  doc: pnas, "j bacteriol", ...
  type: boolean
  inputBinding:
    prefix: -journal
- id: released
  doc: last_week, last_month, last_year, prev_years
  type: boolean
  inputBinding:
    prefix: -released
- id: country
  doc: usa:minnesota, united_kingdom, "pacific ocean", ...
  type: boolean
  inputBinding:
    prefix: -country
- id: feature
  doc: gene, mrna, cds, mat_peptide, ...
  type: boolean
  inputBinding:
    prefix: -feature
- id: location
  doc: mitochondrion, chloroplast, plasmid, plastid
  type: boolean
  inputBinding:
    prefix: -location
- id: molecule
  doc: genomic, mrna, trna, rrna, ncrna
  type: boolean
  inputBinding:
    prefix: -molecule
- id: organism
  doc: animals, archaea, bacteria, eukaryotes, fungi, human, insects, mammals, plants,
    prokaryotes, protists, rodents, viruses
  type: boolean
  inputBinding:
    prefix: -organism
- id: source
  doc: genbank, insd, pdb, pir, refseq, swissprot, tpa
  type: boolean
  inputBinding:
    prefix: -source
- id: status
  doc: alive
  type: boolean
  inputBinding:
    prefix: -status
- id: type
  doc: coding, pseudo
  type: boolean
  inputBinding:
    prefix: -type
- id: class
  doc: acceptor, donor, frameshift, indel, intron, missense, nonsense, synonymous
  type: boolean
  inputBinding:
    prefix: -class
- id: kind
  doc: pathway
  type: boolean
  inputBinding:
    prefix: -kind
- id: pathway
  doc: reactome, wikipathways
  type: boolean
  inputBinding:
    prefix: -pathway
- id: label
  doc: Alias for query step
  type: boolean
  inputBinding:
    prefix: -label
outputs: []
cwlVersion: v1.1
baseCommand:
- efilter
