version 1.0

task Phylip {
  input {
    String? not_exist_phylip
  }
  command <<<
    phylip \
      ~{if defined(not_exist_phylip) then ("-h " +  '"' + not_exist_phylip + '"') else ""}
  >>>
  parameter_meta {
    not_exist_phylip: "not exist in Phylip"
  }
  output {
    File out_stdout = stdout()
  }
}