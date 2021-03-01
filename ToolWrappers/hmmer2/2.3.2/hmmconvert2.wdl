version 1.0

task Hmmconvert2 {
  input {
    Boolean? convert_hmmer_default
    Boolean? convert_hmmer_binary
    Boolean? convert_gcg_prf
    Boolean? convert_extended_format
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
      ~{if (convert_hmmer_default) then "-a" else ""} \
      ~{if (convert_hmmer_binary) then "-b" else ""} \
      ~{if (convert_gcg_prf) then "-p" else ""} \
      ~{if (convert_extended_format) then "-P" else ""} \
      ~{if (append_mode_append) then "-A" else ""} \
      ~{if (force_mode_allow) then "-F" else ""} \
      ~{if (options) then "-options" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    convert_hmmer_default: ": convert to HMMER ASCII file (the default)"
    convert_hmmer_binary: ": convert to HMMER binary file"
    convert_gcg_prf: ": convert to GCG Profile .prf format"
    convert_extended_format: ": convert to Compugen extended .eprf profile format"
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