version 1.0

task MetaCHIPRenameSeqs {
  input {
    File? in
    Boolean? inc_suffix
    String? sep_out
    Int? number_columns_keep
    String? prefix
    File? file_extension
    String name
  }
  command <<<
    MetaCHIP rename_seqs \
      ~{name} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (inc_suffix) then "-inc_suffix" else ""} \
      ~{if defined(sep_out) then ("-sep_out " +  '"' + sep_out + '"') else ""} \
      ~{if defined(number_columns_keep) then ("-n " +  '"' + number_columns_keep + '"') else ""} \
      ~{if defined(prefix) then ("-prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(file_extension) then ("-x " +  '"' + file_extension + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/metachip:1.10.3--pyh3252c3a_0"
  }
  parameter_meta {
    in: "input sequence file"
    inc_suffix: "rename sequences by incrementally adding suffix to file"
    sep_out: "separator for output sequences, default: same as sep_in"
    number_columns_keep: "the number of columns to keep"
    prefix: "add prefix to sequence"
    file_extension: "file extension"
    name: "-sep_in SEP_IN    separator for input sequences"
  }
  output {
    File out_stdout = stdout()
  }
}