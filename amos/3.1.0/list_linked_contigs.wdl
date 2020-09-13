version 1.0

task Listlinkedcontigs {
  input {
    Boolean? disregard_bank_locks
    Boolean? display_compatible_version
    Int? number_characters_use
    File bank_path
  }
  command <<<
    list_linked_contigs \
      ~{bank_path} \
      ~{if (disregard_bank_locks) then "-s" else ""} \
      ~{if (display_compatible_version) then "-v" else ""} \
      ~{if defined(number_characters_use) then ("-f " +  '"' + number_characters_use + '"') else ""}
  >>>
  parameter_meta {
    disregard_bank_locks: "Disregard bank locks and write permissions (spy mode)"
    display_compatible_version: "Display the compatible bank version"
    number_characters_use: "Number of characters of seqname to use as sublibrary (default=3)"
    bank_path: ""
  }
  output {
    File out_stdout = stdout()
  }
}