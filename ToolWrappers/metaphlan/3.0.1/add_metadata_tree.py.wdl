version 1.0

task AddMetadataTreepy {
  input {
    Array[String] f
    Array[String] t
  }
  command <<<
    add_metadata_tree_py \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""} \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    f: ""
    t: ""
  }
  output {
    File out_stdout = stdout()
  }
}