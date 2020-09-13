version 1.0

task CalculateSeqlensh {
  input {
    File? file
    File? directory_optional_default
    File? name_optional_default
    String? greaterthan_symbol_fasta
    String? v
    String? usage_message
  }
  command <<<
    calculate_seqlen_sh \
      ~{if defined(file) then ("-i " +  '"' + file + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name_optional_default) then ("-n " +  '"' + name_optional_default + '"') else ""} \
      ~{if defined(greaterthan_symbol_fasta) then ("-r " +  '"' + greaterthan_symbol_fasta + '"') else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""} \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    file: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    name_optional_default: "name (optional). By default is the same name with .length extension"
    greaterthan_symbol_fasta: "\\\">\\\" (greater-than) symbol from fasta header"
    v: ""
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}