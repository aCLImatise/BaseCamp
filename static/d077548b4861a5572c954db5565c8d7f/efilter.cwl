class: CommandLineTool
id: efilter.cwl
inputs:
- id: in_query
  doc: Query string
  type: boolean?
  inputBinding:
    prefix: -query
- id: in_sort
  doc: Result presentation order
  type: boolean?
  inputBinding:
    prefix: -sort
- id: in_days
  doc: Number of days in the past
  type: boolean?
  inputBinding:
    prefix: -days
- id: in_date_type
  doc: Date field abbreviation
  type: boolean?
  inputBinding:
    prefix: -datetype
- id: in_min_date
  doc: Start of date range
  type: boolean?
  inputBinding:
    prefix: -mindate
- id: in_maxdate
  doc: End of date range
  type: boolean?
  inputBinding:
    prefix: -maxdate
- id: in_field
  doc: Query words individually in field
  type: boolean?
  inputBinding:
    prefix: -field
- id: in_pairs
  doc: Query overlapping word pairs
  type: boolean?
  inputBinding:
    prefix: -pairs
- id: in_spell
  doc: Correct misspellings in query
  type: boolean?
  inputBinding:
    prefix: -spell
- id: in_pub
  doc: "abstract, clinical, english, free, historical,\njournal, medline, preprint,\
    \ published, review,\nstructured"
  type: boolean?
  inputBinding:
    prefix: -pub
- id: in_journal
  doc: pnas, "j bacteriol", ...
  type: boolean?
  inputBinding:
    prefix: -journal
- id: in_released
  doc: last_week, last_month, last_year, prev_years
  type: boolean?
  inputBinding:
    prefix: -released
- id: in_country
  doc: usa:minnesota, united_kingdom, "pacific ocean", ...
  type: boolean?
  inputBinding:
    prefix: -country
- id: in_feature
  doc: gene, mrna, cds, mat_peptide, ...
  type: boolean?
  inputBinding:
    prefix: -feature
- id: in_location
  doc: mitochondrion, chloroplast, plasmid, plastid
  type: boolean?
  inputBinding:
    prefix: -location
- id: in_molecule
  doc: genomic, mrna, trna, rrna, ncrna
  type: boolean?
  inputBinding:
    prefix: -molecule
- id: in_organism
  doc: "animals, archaea, bacteria, eukaryotes, fungi,\nhuman, insects, mammals, plants,\
    \ prokaryotes,\nprotists, rodents, viruses"
  type: boolean?
  inputBinding:
    prefix: -organism
- id: in_source
  doc: genbank, insd, pdb, pir, refseq, swissprot, tpa
  type: boolean?
  inputBinding:
    prefix: -source
- id: in_status
  doc: alive
  type: boolean?
  inputBinding:
    prefix: -status
- id: in_type
  doc: coding, pseudo
  type: boolean?
  inputBinding:
    prefix: -type
- id: in_class
  doc: "acceptor, donor, frameshift, indel, intron,\nmissense, nonsense, synonymous"
  type: boolean?
  inputBinding:
    prefix: -class
- id: in_kind
  doc: pathway
  type: boolean?
  inputBinding:
    prefix: -kind
- id: in_pathway
  doc: reactome, wikipathways
  type: boolean?
  inputBinding:
    prefix: -pathway
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/entrez-direct:13.9--pl526h375a9b1_1
cwlVersion: v1.1
baseCommand:
- efilter
