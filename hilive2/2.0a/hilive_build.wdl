version 1.0

task HiliveBuild {
  input {
    Boolean? print_licensing_information
    Boolean? i
    Boolean? o
    Boolean? do_not_convert_spaces
    Boolean? trim_after_space
  }
  command <<<
    hilive-build \
      ~{true="-l" false="" print_licensing_information} \
      ~{true="-i" false="" i} \
      ~{true="-o" false="" o} \
      ~{true="--do-not-convert-spaces" false="" do_not_convert_spaces} \
      ~{true="--trim-after-space" false="" trim_after_space}
  >>>
  parameter_meta {
    print_licensing_information: "[ --license ]         Print licensing information and exit"
    i: "[ --input ] arg       Reference genome(s) in (multi-)FASTA format.  [REQUIRED]"
    o: "[ --out-prefix ] arg  Output file prefix. Several files with the same  prefix will be created. [REQUIRED]"
    do_not_convert_spaces: "Do not convert all spaces in reference ids to  underscores [Default: converting is on]"
    trim_after_space: "Trim all reference ids after first space [Default:  false]"
  }
}