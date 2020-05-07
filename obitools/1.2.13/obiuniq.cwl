class: CommandLineTool
id: obiuniq.cwl
inputs:
- id: merge
  doc: Attributes to merge
  type: string
  inputBinding:
    prefix: --merge
- id: merge_ids
  doc: Add the merged key with all ids of merged sequences
  type: boolean
  inputBinding:
    prefix: --merge-ids
- id: category_attribute
  doc: Add one attribute to the list of attributes used to group sequences before
    dereplication (option can be used several times)
  type: string
  inputBinding:
    prefix: --category-attribute
- id: prefix
  doc: 'Dereplication is done based on prefix matching: (i) The shortest sequence
    of each group is a prefix of any sequence of its group (ii) Two shortest sequences
    of any couple of groups are not theprefix of the other one'
  type: boolean
  inputBinding:
    prefix: --prefix
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
outputs: []
cwlVersion: v1.1
baseCommand:
- obiuniq
