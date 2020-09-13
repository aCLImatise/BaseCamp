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
      ~{if (c_value_determines) then "-c" else ""} \
      ~{if (algorithm_valid_values) then "-a" else ""} \
      ~{if (hash_function_may) then "-f" else ""} \
      ~{if (print_version_number) then "-V" else ""} \
      ~{if (increase_verbosity_may) then "-v" else ""} \
      ~{if (number_of_keys) then "-k" else ""} \
      ~{if (generation_mode) then "-g" else ""} \
      ~{if (random_seed) then "-s" else ""} \
      ~{if (minimum_perfect_hash) then "-m" else ""} \
      ~{if (main_memory_availability) then "-M" else ""} \
      ~{if (temporary_directory_used) then "-d" else ""} \
      ~{if (meaning_parameter_depends) then "-b" else ""} \
      ~{if (set_number_keys) then "-t" else ""}
  >>>
  parameter_meta {
    c_value_determines: "c value determines:\\n* the number of vertices in the graph for the algorithms BMZ and CHM\\n* the number of bits per key required in the FCH algorithm\\n* the load factor in the CHD_PH algorithm"
    algorithm_valid_values: "algorithm - valid values are\\n* bmz\\n* bmz8\\n* chm\\n* brz\\n* fch\\n* bdz\\n* bdz_ph\\n* chd_ph\\n* chd"
    hash_function_may: "hash function (may be used multiple times) - valid values are\\n* jenkins"
    print_version_number: "print version number and exit"
    increase_verbosity_may: "increase verbosity (may be used multiple times)"
    number_of_keys: "number of keys"
    generation_mode: "generation mode"
    random_seed: "random seed"
    minimum_perfect_hash: "minimum perfect hash function file"
    main_memory_availability: "main memory availability (in MB) used in BRZ algorithm"
    temporary_directory_used: "temporary directory used in BRZ algorithm"
    meaning_parameter_depends: "the meaning of this parameter depends on the algorithm selected in the -a option:\\n* For BRZ it is used to make the maximal number of keys in a bucket lower than 256.\\nIn this case its value should be an integer in the range [64,175]. Default is 128.\\n* For BDZ it is used to determine the size of some precomputed rank\\ninformation and its value should be an integer in the range [3,10]. Default\\nis 7. The larger is this value, the more compact are the resulting functions\\nand the slower are them at evaluation time.\\n* For CHD and CHD_PH it is used to set the average number of keys per bucket\\nand its value should be an integer in the range [1,32]. Default is 4. The\\nlarger is this value, the slower is the construction of the functions.\\nThis parameter has no effect for other algorithms."
    set_number_keys: "set the number of keys per bin for a t-perfect hashing function. A t-perfect\\nhash function allows at most t collisions in a given bin. This parameter applies\\nonly to the CHD and CHD_PH algorithms. Its value should be an integer in the\\nrange [1,128]. Defaul is 1"
    keys_file: "line separated file with keys"
  }
  output {
    File out_stdout = stdout()
  }
}