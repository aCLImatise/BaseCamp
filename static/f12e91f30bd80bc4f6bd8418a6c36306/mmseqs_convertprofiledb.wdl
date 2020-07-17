version 1.0

task MmseqsConvertprofiledb {
  input {
    Boolean? profile_type
    Boolean? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convertprofiledb \
      ~{true="--profile-type" false="" profile_type} \
      ~{true="--sub-mat" false="" sub_mat} \
      ~{true="--threads" false="" threads} \
      ~{true="-v" false="" verbosity_level_nothing}
  >>>
  parameter_meta {
    profile_type: "0               0: HMM (HHsuite) 1: PSSM or 2: HMMER3                       "
    sub_mat: "blosum62.out    amino acid substitution matrix file                         "
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
}