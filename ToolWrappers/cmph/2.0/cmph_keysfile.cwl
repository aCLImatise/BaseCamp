class: CommandLineTool
id: cmph_keysfile.cwl
inputs:
- id: in_value_determines_number
  doc: "c value determines:\n* the number of vertices in the graph for the algorithms\
    \ BMZ and CHM\n* the number of bits per key required in the FCH algorithm\n* the\
    \ load factor in the CHD_PH algorithm"
  type: boolean?
  inputBinding:
    prefix: -c
- id: in_algorithm_valid_values
  doc: "algorithm - valid values are\n* bmz\n* bmz8\n* chm\n* brz\n* fch\n* bdz\n\
    * bdz_ph\n* chd_ph\n* chd"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_hash_function_used
  doc: "hash function (may be used multiple times) - valid values are\n* jenkins"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_print_version_number
  doc: print version number and exit
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_increase_verbosity_used
  doc: increase verbosity (may be used multiple times)
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_number_of_keys
  doc: number of keys
  type: boolean?
  inputBinding:
    prefix: -k
- id: in_generation_mode
  doc: generation mode
  type: boolean?
  inputBinding:
    prefix: -g
- id: in_random_seed
  doc: random seed
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_minimum_perfect_hash
  doc: minimum perfect hash function file
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_main_memory_availability
  doc: main memory availability (in MB) used in BRZ algorithm
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_temporary_directory_used
  doc: temporary directory used in BRZ algorithm
  type: boolean?
  inputBinding:
    prefix: -d
- id: in_meaning_parameter_depends
  doc: "the meaning of this parameter depends on the algorithm selected in the -a\
    \ option:\n* For BRZ it is used to make the maximal number of keys in a bucket\
    \ lower than 256.\nIn this case its value should be an integer in the range [64,175].\
    \ Default is 128.\n* For BDZ it is used to determine the size of some precomputed\
    \ rank\ninformation and its value should be an integer in the range [3,10]. Default\n\
    is 7. The larger is this value, the more compact are the resulting functions\n\
    and the slower are them at evaluation time.\n* For CHD and CHD_PH it is used to\
    \ set the average number of keys per bucket\nand its value should be an integer\
    \ in the range [1,32]. Default is 4. The\nlarger is this value, the slower is\
    \ the construction of the functions.\nThis parameter has no effect for other algorithms."
  type: boolean?
  inputBinding:
    prefix: -b
- id: in_set_number_function
  doc: "set the number of keys per bin for a t-perfect hashing function. A t-perfect\n\
    hash function allows at most t collisions in a given bin. This parameter applies\n\
    only to the CHD and CHD_PH algorithms. Its value should be an integer in the\n\
    range [1,128]. Defaul is 1"
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_keys_file
  doc: line separated file with keys
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
- cmph
- keysfile
