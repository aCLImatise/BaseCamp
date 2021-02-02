version 1.0

task Hmmconvert2 {
  input {
    Boolean? convert_file_default
    Boolean? convert_hmmer_binary
    Boolean? convert_prf_format
    Boolean? convert_compugen_extended
    Boolean? append_mode_append
    Boolean? force_mode_allow
    Boolean? options
    String hmm_convert
    File old_hmm_file
    File new_hmm_file
  }
  command <<<
    hmmconvert2 \
      ~{hmm_convert} \
      ~{old_hmm_file} \
      ~{new_hmm_file} \
      ~{if (convert_file_default) then "-a" else ""} \
      ~{if (convert_hmmer_binary) then "-b" else ""} \
      ~{if (convert_prf_format) then "-p" else ""} \
      ~{if (convert_compugen_extended) then "-P" else ""} \
      ~{if (append_mode_append) then "-A" else ""} \
      ~{if (force_mode_allow) then "-F" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  parameter_meta {
    convert_file_default: ": convert to HMMER ASCII file (the default)"
    convert_hmmer_binary: ": convert to HMMER binary file"
    convert_prf_format: ": convert to GCG Profile .prf format"
    convert_compugen_extended: ": convert to Compugen extended .eprf profile format"
    append_mode_append: ": append mode; append to <new hmm file>"
    force_mode_allow: ": force mode; allow overwriting of existing files"
    options: ""
    hmm_convert: ""
    old_hmm_file: ""
    new_hmm_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}