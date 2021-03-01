class: CommandLineTool
id: halLiftover.cwl
inputs:
- id: in_append
  doc: ':                     append results to tgtBed [default = 0]'
  type: boolean?
  inputBinding:
    prefix: --append
- id: in_cache_bytes
  doc: ":         maximum size in bytes of regular hdf5 cache [default =\n15728640]"
  type: long?
  inputBinding:
    prefix: --cacheBytes
- id: in_cache_mdc
  doc: ':           number of metadata slots in hdf5 cache [default = 113]'
  type: long?
  inputBinding:
    prefix: --cacheMDC
- id: in_cacher_dc
  doc: ":           number of regular slots in hdf5 cache.  should be a\nprime number\
    \ ~= 10 * DefaultCacheRDCBytes / chunk\n[default = 599999]"
  type: long?
  inputBinding:
    prefix: --cacheRDC
- id: in_cache_w_zero
  doc: ':            w0 parameter fro hdf5 cache [default = 0.75]'
  type: long?
  inputBinding:
    prefix: --cacheW0
- id: in_coalescence_limit
  doc: ":   coalescence limit genome: the genome at or above the\nMRCA of source and\
    \ target at which we stop looking for\nhomologies (default: MRCA) [default = ]"
  type: string?
  inputBinding:
    prefix: --coalescenceLimit
- id: in_in_bed_version
  doc: ":       bed version of input file as integer between 3 and 9 or\n12 reflecting\
    \ the number of columns (see bed format"
  type: long?
  inputBinding:
    prefix: --inBedVersion
- id: in_in_memory
  doc: ":                   load all data in memory (and disable hdf5 cache)\n[default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --inMemory
- id: in_keep_extra
  doc: ":                  keep extra columns. these are columns in the input\nbeyond\
    \ the specified or detected bed version, and which\nare cut by default. [default\
    \ = 0]"
  type: boolean?
  inputBinding:
    prefix: --keepExtra
- id: in_no_dupes
  doc: ':                    do not map between duplications in graph. [default =
    0]'
  type: boolean?
  inputBinding:
    prefix: --noDupes
- id: in_out_bed_version
  doc: ":      bed version of output file as integer between 3 and 9\nor 12 reflecting\
    \ the number of columns (see bed format\nspecification for more details). Will\
    \ be same as input\nby default. [default = 0]"
  type: long?
  inputBinding:
    prefix: --outBedVersion
- id: in_out_psl
  doc: ":                     write output in PSL instead of bed format. overrides\n\
    --outBedVersion when specified. [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --outPSL
- id: in_out_psl_with_name
  doc: ":             write output as input BED name followed by PSL line\ninstead\
    \ of bed format. overrides --outBedVersion when\nspecified. [default = 0]"
  type: boolean?
  inputBinding:
    prefix: --outPSLWithName
- id: in_tab
  doc: ":                        input is tab-separated. this allows column entries\
    \ to\ncontain spaces.  if this flag is not set, both spaces\nand tabs are used\
    \ to separate input columns. [default =\n0]\n"
  type: boolean?
  inputBinding:
    prefix: --tab
- id: in_hal_file
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_src_genome
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_src_bed
  doc: ''
  type: string
  inputBinding:
    position: 2
- id: in_tgt_genome
  doc: ''
  type: string
  inputBinding:
    position: 3
- id: in_tgt_bed
  doc: ''
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- halLiftover
