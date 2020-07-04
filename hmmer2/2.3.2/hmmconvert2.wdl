version 1.0

task Hmmconvert2 {
  input {
    Boolean? convert_hmmer_ascii
    Boolean? convert_hmmer_binary
    Boolean? convert_gcg_profile
    Boolean? convert_compugen_extended
    Boolean? append_mode_append
    Boolean? force_mode_allow
    Boolean? options
    String hmm_convert
    String old_hmm_file
    String new_hmm_file
  }
  command <<<
    hmmconvert2 \
      ~{hmm_convert} \
      ~{old_hmm_file} \
      ~{new_hmm_file} \
      ~{true="-a" false="" convert_hmmer_ascii} \
      ~{true="-b" false="" convert_hmmer_binary} \
      ~{true="-p" false="" convert_gcg_profile} \
      ~{true="-P" false="" convert_compugen_extended} \
      ~{true="-A" false="" append_mode_append} \
      ~{true="-F" false="" force_mode_allow} \
      ~{true="-options" false="" options}
  >>>
  parameter_meta {
    convert_hmmer_ascii: ": convert to HMMER ASCII file (the default)"
    convert_hmmer_binary: ": convert to HMMER binary file"
    convert_gcg_profile: ": convert to GCG Profile .prf format"
    convert_compugen_extended: ": convert to Compugen extended .eprf profile format"
    append_mode_append: ": append mode; append to <new hmm file>"
    force_mode_allow: ": force mode; allow overwriting of existing files"
    options: ""
    hmm_convert: ""
    old_hmm_file: ""
    new_hmm_file: ""
  }
}