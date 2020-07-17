version 1.0

task FpaGfa {
  input {
    Boolean? containment
    Boolean? internal_match
    String? write_mapping_passing
  }
  command <<<
    fpa gfa \
      ~{true="--containment" false="" containment} \
      ~{true="--internalmatch" false="" internal_match} \
      ~{if defined(write_mapping_passing) then ("--output " +  '"' + write_mapping_passing + '"') else ""}
  >>>
  parameter_meta {
    containment: "Keep containment overlap"
    internal_match: "Keep internal match overlap"
    write_mapping_passing: "Write mapping passing filter in gfa1 graph format in path passed as parameter"
  }
}