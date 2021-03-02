class: CommandLineTool
id: rtg_cgsim.cwl
inputs:
- id: in_input
  doc: SDF containing input genome
  type: string?
  inputBinding:
    prefix: --input
- id: in_output
  doc: name for reads output SDF
  type: string?
  inputBinding:
    prefix: --output
- id: in_abundance
  doc: "if set, the user-supplied distribution\nrepresents desired abundance"
  type: boolean?
  inputBinding:
    prefix: --abundance
- id: in_allow_unknowns
  doc: "allow reads to be drawn from template\nfragments containing unknown nucleotides"
  type: boolean?
  inputBinding:
    prefix: --allow-unknowns
- id: in_coverage
  doc: coverage, must be positive
  type: double?
  inputBinding:
    prefix: --coverage
- id: in_distribution
  doc: "file containing probability distribution for\nsequence selection"
  type: File?
  inputBinding:
    prefix: --distribution
- id: in_dna_fraction
  doc: "if set, the user-supplied distribution\nrepresents desired DNA fraction"
  type: boolean?
  inputBinding:
    prefix: --dna-fraction
- id: in_max_fragment_size
  doc: maximum fragment size (Default is 500)
  type: long?
  inputBinding:
    prefix: --max-fragment-size
- id: in_min_fragment_size
  doc: minimum fragment size (Default is 350)
  type: long?
  inputBinding:
    prefix: --min-fragment-size
- id: in_n_rate
  doc: "rate that the machine will generate new\nunknowns in the read (Default is\
    \ 0.0)"
  type: double?
  inputBinding:
    prefix: --n-rate
- id: in_num_reads
  doc: number of reads to be generated
  type: long?
  inputBinding:
    prefix: --num-reads
- id: in_taxonomy_distribution
  doc: "file containing probability distribution for\nsequence selection expressed\
    \ by taxonomy id"
  type: File?
  inputBinding:
    prefix: --taxonomy-distribution
- id: in_cg_read_version
  doc: "select Complete Genomics read structure\nversion, 1 (35 bp) or 2 (29 bp)"
  type: long?
  inputBinding:
    prefix: --cg-read-version
- id: in_comment
  doc: comment to include in the generated SDF
  type: string?
  inputBinding:
    prefix: --comment
- id: in_no_names
  doc: do not create read names in the output SDF
  type: boolean?
  inputBinding:
    prefix: --no-names
- id: in_no_qualities
  doc: do not create read qualities in the output
  type: boolean?
  inputBinding:
    prefix: --no-qualities
- id: in_sam_rg
  doc: "|FILE         file containing a single valid read group\nSAM header line or\
    \ a string in the form\n\"@RG\\tID:READGROUP1\\tSM:BACT_SAMPLE\\tPL:ILLUMINA\""
  type: File?
  inputBinding:
    prefix: --sam-rg
- id: in_seed
  doc: seed for random number generator
  type: long?
  inputBinding:
    prefix: --seed
- id: in_sdf
  doc: -q, --qual-range=STRING          set the range of base quality values
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- rtg
- cgsim
