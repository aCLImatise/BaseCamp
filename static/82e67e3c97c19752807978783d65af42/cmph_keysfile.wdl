version 1.0

task CmphKeysfile {
  input {
    Boolean? c_value_determines
    Boolean? algorithm_valid_values
    Boolean? hash_function_may
    Boolean? print_version_number
    Boolean? increase_verbosity_may
    Boolean? number_of_keys
    Boolean? generation_mode
    Boolean? random_seed
    Boolean? minimum_perfect_hash
    Boolean? main_memory_availability
    Boolean? temporary_directory_used
    Boolean? meaning_parameter_depends
    Boolean? set_number_keys
    String keys_file
  }
  command <<<
    cmph keysfile \
      ~{keys_file} \
      ~{true="-c" false="" c_value_determines} \
      ~{true="-a" false="" algorithm_valid_values} \
      ~{true="-f" false="" hash_function_may} \
      ~{true="-V" false="" print_version_number} \
      ~{true="-v" false="" increase_verbosity_may} \
      ~{true="-k" false="" number_of_keys} \
      ~{true="-g" false="" generation_mode} \
      ~{true="-s" false="" random_seed} \
      ~{true="-m" false="" minimum_perfect_hash} \
      ~{true="-M" false="" main_memory_availability} \
      ~{true="-d" false="" temporary_directory_used} \
      ~{true="-b" false="" meaning_parameter_depends} \
      ~{true="-t" false="" set_number_keys}
  >>>
  parameter_meta {
    c_value_determines: "c value determines: * the number of vertices in the graph for the algorithms BMZ and CHM * the number of bits per key required in the FCH algorithm * the load factor in the CHD_PH algorithm"
    algorithm_valid_values: "algorithm - valid values are * bmz * bmz8 * chm * brz * fch * bdz * bdz_ph * chd_ph * chd"
    hash_function_may: "hash function (may be used multiple times) - valid values are * jenkins"
    print_version_number: "print version number and exit"
    increase_verbosity_may: "increase verbosity (may be used multiple times)"
    number_of_keys: "number of keys"
    generation_mode: "generation mode"
    random_seed: "random seed"
    minimum_perfect_hash: "minimum perfect hash function file "
    main_memory_availability: "main memory availability (in MB) used in BRZ algorithm "
    temporary_directory_used: "temporary directory used in BRZ algorithm "
    meaning_parameter_depends: "the meaning of this parameter depends on the algorithm selected in the -a option: * For BRZ it is used to make the maximal number of keys in a bucket lower than 256. In this case its value should be an integer in the range [64,175]. Default is 128. * For BDZ it is used to determine the size of some precomputed rank information and its value should be an integer in the range [3,10]. Default is 7. The larger is this value, the more compact are the resulting functions and the slower are them at evaluation time. * For CHD and CHD_PH it is used to set the average number of keys per bucket and its value should be an integer in the range [1,32]. Default is 4. The larger is this value, the slower is the construction of the functions. This parameter has no effect for other algorithms."
    set_number_keys: "set the number of keys per bin for a t-perfect hashing function. A t-perfect hash function allows at most t collisions in a given bin. This parameter applies only to the CHD and CHD_PH algorithms. Its value should be an integer in the range [1,128]. Defaul is 1"
    keys_file: "line separated file with keys"
  }
}