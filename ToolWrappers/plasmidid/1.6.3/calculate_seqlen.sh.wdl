version 1.0

task CalculateSeqlensh {
  input {
    File? i
    File? directory_optional_default
    File? name_optional_default
    String? symbol_fasta_header
    String? usage_message
  }
  command <<<
    calculate_seqlen_sh \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""} \
      ~{if defined(directory_optional_default) then ("-o " +  '"' + directory_optional_default + '"') else ""} \
      ~{if defined(name_optional_default) then ("-n " +  '"' + name_optional_default + '"') else ""} \
      ~{if defined(symbol_fasta_header) then ("-r " +  '"' + symbol_fasta_header + '"') else ""} \
      ~{if defined(usage_message) then ("-v " +  '"' + usage_message + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    i: "file"
    directory_optional_default: "directory (optional). By default the file is replaced in the same location"
    name_optional_default: "name (optional). By default is the same name with .length extension"
    symbol_fasta_header: "\\\">\\\" (greater-than) symbol from fasta header"
    usage_message: "usage message"
  }
  output {
    File out_stdout = stdout()
  }
}