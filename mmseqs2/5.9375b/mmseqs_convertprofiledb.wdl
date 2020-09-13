version 1.0

task MmseqsConvertprofiledb {
  input {
    Boolean? profile_type
    File? sub_mat
    Boolean? threads
    Boolean? verbosity_level_nothing
  }
  command <<<
    mmseqs convertprofiledb \
      ~{if (profile_type) then "--profile-type" else ""} \
      ~{if (sub_mat) then "--sub-mat" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (verbosity_level_nothing) then "-v" else ""}
  >>>
  parameter_meta {
    profile_type: "0               0: HMM (HHsuite) 1: PSSM or 2: HMMER3"
    sub_mat: "blosum62.out    amino acid substitution matrix file"
    threads: "8               number of cores used for the computation (uses all cores by default)"
    verbosity_level_nothing: "3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"
  }
  output {
    File out_stdout = stdout()
    File out_sub_mat = "${in_sub_mat}"
  }
}