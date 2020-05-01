#!/usr/bin/env cwl-runner

baseCommand:
- filterGottcha.pl
class: CommandLineTool
cwlVersion: v1.0
id: filtergottcha.pl
inputs:
- doc: STRAIN lookup filename  (E.g. /lscratch/db/custom/variantStrainLookup.dmp)
  id: strain_lookup
  inputBinding:
    prefix: --strainLookup
  type: string
- doc: SPECIES lookup filename (E.g. /lscratch/db/custom/variantSpeciesLookup.dmp)
  id: species_lookup
  inputBinding:
    prefix: --speciesLookup
  type: string
- doc: GENUS lookup filename   (E.g. /lscratch/db/custom/genusLookupBySpecies.dmp)
  id: genus_lookup
  inputBinding:
    prefix: --genusLookup
  type: string
- doc: FAMILY lookup filename  (E.g. /lscratch/db/custom/familyLookupByGenus.dmp)
  id: family_lookup
  inputBinding:
    prefix: --familyLookup
  type: string
- doc: ORDER lookup filename   (E.g. /lscratch/db/custom/orderLookupByFamily.dmp)
  id: order_lookup
  inputBinding:
    prefix: --orderLookup
  type: string
- doc: CLASS lookup filename   (E.g. /lscratch/db/custom/classLookupByOrder.dmp)
  id: class_lookup
  inputBinding:
    prefix: --classLookup
  type: string
- doc: PHYLUM lookup filename  (E.g. /lscratch/db/custom/phylumLookupByClass.dmp)
  id: phylum_lookup
  inputBinding:
    prefix: --phylumLookup
  type: string
- doc: TAX lookup filename     (E.g. /lscratch/db/custom/taxLookupBySpecies.dmp)
  id: tax_lookup
  inputBinding:
    prefix: --taxLookup
  type: string
- doc: 'Tax level that the GOTTCHA run was performed at. One of either: STRAIN, SPECIES,
    GENUS, FAMILY, ORDER, CLASS, or PHYLUM'
  id: tax_level
  inputBinding:
    prefix: --taxLevel
  type: string
- doc: Directory name containing the GOTTCHA *.tsv tables
  id: dir
  inputBinding:
    prefix: --dir
  type: string
- doc: Prefix of the GOTTCHA *.tsv tables. If FILENAME="even-100genus1-100species-150Mpe-haserror_fixL30Q20.strain.tsv"
    Then PREFIX="even-100genus1-100species-150Mpe-haserror_fixL30Q20"
  id: prefix
  inputBinding:
    prefix: --prefix
  type: string
- doc: '=<1,2,3>            Method by which to calculate relative abundance. Multiple
    methods are comma-separated (no spaces). 1: Linear Depth-of-Coverage 2:  3: '
  id: method
  inputBinding:
    prefix: --method
  type: boolean
- doc: 'Field separator [default: <tab>]'
  id: field
  inputBinding:
    prefix: --field
  type: boolean
- doc: Minimum unique length to be considered valid in abundance calculation [100]
  id: min_len
  inputBinding:
    prefix: --minLen
  type: boolean
- doc: Minimum linear coverage to be considered valid in abundance calculation [0.005]
  id: min_cov
  inputBinding:
    prefix: --minCov
  type: boolean
- doc: Minimum no. of hits to be considered valid in abundance calculation [10]
  id: min_hits
  inputBinding:
    prefix: --minHits
  type: boolean
- doc: Minimum Mean-Linear-Hit-Length to be considered valid in abundance calculation
    [1]
  id: min_ml_hl
  inputBinding:
    prefix: --minMLHL
  type: boolean
- doc: Critical coverage below which --minMLHL will cause an organism to fail []
  id: c_cov
  inputBinding:
    prefix: --cCov
  type: boolean
