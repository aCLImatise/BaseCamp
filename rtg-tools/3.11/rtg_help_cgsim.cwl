class: CommandLineTool
id: rtg_help_cgsim.cwl
inputs:
- id: input
  doc: SDF containing input genome
  type: string
  inputBinding:
    prefix: --input
- id: output
  doc: name for reads output SDF
  type: string
  inputBinding:
    prefix: --output
- id: abundance
  doc: if set, the user-supplied distribution represents desired abundance
  type: boolean
  inputBinding:
    prefix: --abundance
- id: allow_unknowns
  doc: allow reads to be drawn from template fragments containing unknown nucleotides
  type: boolean
  inputBinding:
    prefix: --allow-unknowns
- id: coverage
  doc: coverage, must be positive
  type: double
  inputBinding:
    prefix: --coverage
- id: distribution
  doc: file containing probability distribution for sequence selection
  type: File
  inputBinding:
    prefix: --distribution
- id: dna_fraction
  doc: if set, the user-supplied distribution represents desired DNA fraction
  type: boolean
  inputBinding:
    prefix: --dna-fraction
- id: max_fragment_size
  doc: maximum fragment size (Default is 500)
  type: long
  inputBinding:
    prefix: --max-fragment-size
- id: min_fragment_size
  doc: minimum fragment size (Default is 350)
  type: long
  inputBinding:
    prefix: --min-fragment-size
- id: n_rate
  doc: rate that the machine will generate new unknowns in the read (Default is 0.0)
  type: double
  inputBinding:
    prefix: --n-rate
- id: num_reads
  doc: number of reads to be generated
  type: long
  inputBinding:
    prefix: --num-reads
- id: taxonomy_distribution
  doc: file containing probability distribution for sequence selection expressed by
    taxonomy id
  type: File
  inputBinding:
    prefix: --taxonomy-distribution
- id: cg_read_version
  doc: select Complete Genomics read structure version, 1 (35 bp) or 2 (29 bp)
  type: long
  inputBinding:
    prefix: --cg-read-version
- id: comment
  doc: comment to include in the generated SDF
  type: string
  inputBinding:
    prefix: --comment
- id: no_names
  doc: do not create read names in the output SDF
  type: boolean
  inputBinding:
    prefix: --no-names
- id: no_qualities
  doc: do not create read qualities in the output SDF
  type: boolean
  inputBinding:
    prefix: --no-qualities
- id: qual_range
  doc: 'set the range of base quality values permitted e.g.: 3-40 (Default is fixed
    qualities corresponding to overall machine base error rate)'
  type: string
  inputBinding:
    prefix: --qual-range
- id: sam_rg
  doc: '|FILE         file containing a single valid read group SAM header line or
    a string in the form "@RG\tID:READGROUP1\tSM:BACT_SAMPLE\tPL:ILLUMINA"'
  type: string
  inputBinding:
    prefix: --sam-rg
- id: seed
  doc: seed for random number generator
  type: long
  inputBinding:
    prefix: --seed
outputs: []
cwlVersion: v1.1
baseCommand:
- rtg
- help
- cgsim
