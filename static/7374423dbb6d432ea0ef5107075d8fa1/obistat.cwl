class: CommandLineTool
id: obistat.cwl
inputs:
- id: minimum
  doc: '(``-m`` option) '
  type: string
  inputBinding:
    prefix: '- minimum'
- id: maximum
  doc: '(``-M`` option) '
  type: string
  inputBinding:
    prefix: '- maximum'
- id: mean
  doc: '(``-a`` option) '
  type: string
  inputBinding:
    prefix: '- mean'
- id: variance
  doc: '(``-v`` option) '
  type: boolean
  inputBinding:
    prefix: '- variance'
- id: standard
  doc: (``-s`` option)
  type: string
  inputBinding:
    prefix: '- standard'
- id: category_attribute
  doc: Attribute used to categorize the sequence records.
  type: string
  inputBinding:
    prefix: --category-attribute
- id: min
  doc: Computes the minimum value of attribute for each category.
  type: string
  inputBinding:
    prefix: --min
- id: max
  doc: Computes the maximum value of attribute for each category.
  type: string
  inputBinding:
    prefix: --max
- id: mean
  doc: Computes the mean value of attribute for each category.
  type: string
  inputBinding:
    prefix: --mean
- id: variance
  doc: Computes the variance of attribute for each category.
  type: string
  inputBinding:
    prefix: --variance
- id: std_dev
  doc: Computes the standard deviation of attribute for each category.
  type: string
  inputBinding:
    prefix: --std-dev
- id: skip
  doc: skip the N first sequences
  type: string
  inputBinding:
    prefix: --skip
- id: only
  doc: treat only N sequences
  type: string
  inputBinding:
    prefix: --only
- id: genbank
  doc: Input file is in genbank format
  type: boolean
  inputBinding:
    prefix: --genbank
- id: embl
  doc: Input file is in embl format
  type: boolean
  inputBinding:
    prefix: --embl
- id: skip_on_error
  doc: Skip sequence entries with parse error
  type: boolean
  inputBinding:
    prefix: --skip-on-error
- id: fast_a
  doc: Input file is in fasta nucleic format (including obitools fasta extentions)
  type: boolean
  inputBinding:
    prefix: --fasta
- id: eco_pcr
  doc: Input file is in ecopcr format
  type: boolean
  inputBinding:
    prefix: --ecopcr
- id: raw_fast_a
  doc: Input file is in fasta format (but more tolerant to format variant)
  type: boolean
  inputBinding:
    prefix: --raw-fasta
- id: sanger
  doc: Input file is in sanger fastq nucleic format (standard fastq)
  type: boolean
  inputBinding:
    prefix: --sanger
- id: solexa
  doc: Input file is in fastq nucleic format produced by solexa sequencer
  type: boolean
  inputBinding:
    prefix: --solexa
- id: eco_pcr_db
  doc: Input file is an ecopcr database
  type: boolean
  inputBinding:
    prefix: --ecopcrdb
- id: nuc
  doc: Input file contains nucleic sequences
  type: boolean
  inputBinding:
    prefix: --nuc
- id: prot
  doc: Input file contains protein sequences
  type: boolean
  inputBinding:
    prefix: --prot
- id: database
  doc: ecoPCR taxonomy Database name
  type: File
  inputBinding:
    prefix: --database
- id: taxonomy_dump
  doc: NCBI Taxonomy dump repository name
  type: File
  inputBinding:
    prefix: --taxonomy-dump
outputs: []
cwlVersion: v1.1
baseCommand:
- obistat
