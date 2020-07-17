class: CommandLineTool
id: ../../../../home/ubuntu/BiocondaCli/cmph_keysfile.cwl
inputs:
- id: c_value_determines
  doc: 'c value determines: * the number of vertices in the graph for the algorithms
    BMZ and CHM * the number of bits per key required in the FCH algorithm * the load
    factor in the CHD_PH algorithm'
  type: boolean
  inputBinding:
    prefix: -c
- id: algorithm_valid_values
  doc: algorithm - valid values are * bmz * bmz8 * chm * brz * fch * bdz * bdz_ph
    * chd_ph * chd
  type: boolean
  inputBinding:
    prefix: -a
- id: hash_function_may
  doc: hash function (may be used multiple times) - valid values are * jenkins
  type: boolean
  inputBinding:
    prefix: -f
- id: print_version_number
  doc: print version number and exit
  type: boolean
  inputBinding:
    prefix: -V
- id: increase_verbosity_may
  doc: increase verbosity (may be used multiple times)
  type: boolean
  inputBinding:
    prefix: -v
- id: number_of_keys
  doc: number of keys
  type: boolean
  inputBinding:
    prefix: -k
- id: generation_mode
  doc: generation mode
  type: boolean
  inputBinding:
    prefix: -g
- id: random_seed
  doc: random seed
  type: boolean
  inputBinding:
    prefix: -s
- id: minimum_perfect_hash
  doc: 'minimum perfect hash function file '
  type: boolean
  inputBinding:
    prefix: -m
- id: main_memory_availability
  doc: 'main memory availability (in MB) used in BRZ algorithm '
  type: boolean
  inputBinding:
    prefix: -M
- id: temporary_directory_used
  doc: 'temporary directory used in BRZ algorithm '
  type: boolean
  inputBinding:
    prefix: -d
- id: meaning_parameter_depends
  doc: 'the meaning of this parameter depends on the algorithm selected in the -a
    option: * For BRZ it is used to make the maximal number of keys in a bucket lower
    than 256. In this case its value should be an integer in the range [64,175]. Default
    is 128. * For BDZ it is used to determine the size of some precomputed rank information
    and its value should be an integer in the range [3,10]. Default is 7. The larger
    is this value, the more compact are the resulting functions and the slower are
    them at evaluation time. * For CHD and CHD_PH it is used to set the average number
    of keys per bucket and its value should be an integer in the range [1,32]. Default
    is 4. The larger is this value, the slower is the construction of the functions.
    This parameter has no effect for other algorithms.'
  type: boolean
  inputBinding:
    prefix: -b
- id: set_number_keys
  doc: set the number of keys per bin for a t-perfect hashing function. A t-perfect
    hash function allows at most t collisions in a given bin. This parameter applies
    only to the CHD and CHD_PH algorithms. Its value should be an integer in the range
    [1,128]. Defaul is 1
  type: boolean
  inputBinding:
    prefix: -t
- id: keys_file
  doc: line separated file with keys
  type: string
  inputBinding:
    position: 0
outputs: []
cwlVersion: v1.1
baseCommand:
- cmph
- keysfile
