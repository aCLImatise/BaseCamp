class: CommandLineTool
id: filterGottcha.pl.cwl
inputs:
- id: strain_lookup
  doc: STRAIN lookup filename  (E.g. /lscratch/db/custom/variantStrainLookup.dmp)
  type: string
  inputBinding:
    prefix: --strainLookup
- id: species_lookup
  doc: SPECIES lookup filename (E.g. /lscratch/db/custom/variantSpeciesLookup.dmp)
  type: string
  inputBinding:
    prefix: --speciesLookup
- id: genus_lookup
  doc: GENUS lookup filename   (E.g. /lscratch/db/custom/genusLookupBySpecies.dmp)
  type: string
  inputBinding:
    prefix: --genusLookup
- id: family_lookup
  doc: FAMILY lookup filename  (E.g. /lscratch/db/custom/familyLookupByGenus.dmp)
  type: string
  inputBinding:
    prefix: --familyLookup
- id: order_lookup
  doc: ORDER lookup filename   (E.g. /lscratch/db/custom/orderLookupByFamily.dmp)
  type: string
  inputBinding:
    prefix: --orderLookup
- id: class_lookup
  doc: CLASS lookup filename   (E.g. /lscratch/db/custom/classLookupByOrder.dmp)
  type: string
  inputBinding:
    prefix: --classLookup
- id: phylum_lookup
  doc: PHYLUM lookup filename  (E.g. /lscratch/db/custom/phylumLookupByClass.dmp)
  type: string
  inputBinding:
    prefix: --phylumLookup
- id: tax_lookup
  doc: TAX lookup filename     (E.g. /lscratch/db/custom/taxLookupBySpecies.dmp)
  type: string
  inputBinding:
    prefix: --taxLookup
- id: tax_level
  doc: 'Tax level that the GOTTCHA run was performed at. One of either: STRAIN, SPECIES,
    GENUS, FAMILY, ORDER, CLASS, or PHYLUM'
  type: string
  inputBinding:
    prefix: --taxLevel
- id: dir
  doc: Directory name containing the GOTTCHA *.tsv tables
  type: string
  inputBinding:
    prefix: --dir
- id: prefix
  doc: Prefix of the GOTTCHA *.tsv tables. If FILENAME="even-100genus1-100species-150Mpe-haserror_fixL30Q20.strain.tsv"
    Then PREFIX="even-100genus1-100species-150Mpe-haserror_fixL30Q20"
  type: string
  inputBinding:
    prefix: --prefix
- id: method
  doc: '=<1,2,3>            Method by which to calculate relative abundance. Multiple
    methods are comma-separated (no spaces). 1: Linear Depth-of-Coverage 2:  3: '
  type: boolean
  inputBinding:
    prefix: --method
- id: field
  doc: 'Field separator [default: <tab>]'
  type: boolean
  inputBinding:
    prefix: --field
- id: min_len
  doc: Minimum unique length to be considered valid in abundance calculation [100]
  type: boolean
  inputBinding:
    prefix: --minLen
- id: min_cov
  doc: Minimum linear coverage to be considered valid in abundance calculation [0.005]
  type: boolean
  inputBinding:
    prefix: --minCov
- id: min_hits
  doc: Minimum no. of hits to be considered valid in abundance calculation [10]
  type: boolean
  inputBinding:
    prefix: --minHits
- id: min_ml_hl
  doc: Minimum Mean-Linear-Hit-Length to be considered valid in abundance calculation
    [1]
  type: boolean
  inputBinding:
    prefix: --minMLHL
- id: c_cov
  doc: Critical coverage below which --minMLHL will cause an organism to fail []
  type: boolean
  inputBinding:
    prefix: --cCov
outputs: []
cwlVersion: v1.1
baseCommand:
- filterGottcha.pl
