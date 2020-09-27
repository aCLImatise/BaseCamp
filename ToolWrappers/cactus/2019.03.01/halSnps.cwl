class: CommandLineTool
id: halSnps.cwl
inputs:
- id: in_cache_bytes
  doc: ":         maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':           number of metadata slots in hdf5 cache [default = 113]'
  type: long
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":           number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':            w0 parameter fro hdf5 cache [default = 0.75]'
  type: long
  inputBinding:
    prefix: --cacheW0
- id: in_in_memory
  doc: ":                   load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean
  inputBinding:
    prefix: --inMemory
- id: in_length
  doc: ":             length of the reference genome (or sequence if\nspecified) to\
    \ convert.  If set to 0, the entire thing\nis converted [default = 0]"
  type: long
  inputBinding:
    prefix: --length
- id: in_min_species_for_snp
  doc: ":   minimum number of species that must have a different\nbase than the reference\
    \ for a SNP to be reported in the\nTSV [default = 1]"
  type: long
  inputBinding:
    prefix: --minSpeciesForSnp
- id: in_no_dupes
  doc: ':                    do not consider paralogies while mapping [default = 0]'
  type: boolean
  inputBinding:
    prefix: --noDupes
- id: in_ref_sequence
  doc: ":        name of reference sequence within reference genome (all\nsequences\
    \ if empty) [default = \"\"]"
  type: string
  inputBinding:
    prefix: --refSequence
- id: in_start
  doc: ":              coordinate within reference genome (or sequence if\nspecified)\
    \ to start at [default = 0]"
  type: long
  inputBinding:
    prefix: --start
- id: in_tsv
  doc: ":                path of tsv file to write snps to in reference genome\ncoordinates,\
    \ and containing the base assignments for\neach genome [default = \"\"]"
  type: File
  inputBinding:
    prefix: --tsv
- id: in_unique
  doc: ":                     Whether to ignore columns that are not canonical on\
    \ the\nreference genome [default = 0]\n"
  type: boolean
  inputBinding:
    prefix: --unique
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_ref_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_target_genomes
  doc: ''
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- halSnps
