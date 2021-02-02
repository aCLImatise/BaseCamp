version 1.0

task FpaGfa {
  input {
    Boolean? containment
    Boolean? internal_match
    File? write_mapping_filter
  }
  command <<<
    fpa gfa \
      ~{if (containment) then "--containment" else ""} \
      ~{if (internal_match) then "--internalmatch" else ""} \
      ~{if defined(write_mapping_filter) then ("--output " +  '"' + write_mapping_filter + '"') else ""}
  >>>
  parameter_meta {
    containment: "Keep containment overlap"
    internal_match: "Keep internal match overlap"
    write_mapping_filter: "Write mapping passing filter in gfa1 graph format in path passed as parameter"
  }
  output {
    File out_stdout = stdout()
  }
}