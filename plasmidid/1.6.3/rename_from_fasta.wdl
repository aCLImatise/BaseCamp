version 1.0

task RenameFromFasta.sh {
  input {
    String? usage_message
  }
  command <<<
    rename_from_fasta.sh \
      ~{if defined(usage_message) then ("-h " +  '"' + usage_message + '"') else ""}
  >>>
  parameter_meta {
    usage_message: "usage message"
  }
}