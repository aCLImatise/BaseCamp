version 1.0

task CPecanLastz {
  input {
    Boolean? table_only
    File? write_segments
    File? write_capsule
    File? target_capsule
  }
  command <<<
    cPecanLastz \
      ~{true="--tableonly" false="" table_only} \
      ~{if defined(write_segments) then ("--writesegments " +  '"' + write_segments + '"') else ""} \
      ~{if defined(write_capsule) then ("--writecapsule " +  '"' + write_capsule + '"') else ""} \
      ~{if defined(target_capsule) then ("--targetcapsule " +  '"' + target_capsule + '"') else ""}
  >>>
  parameter_meta {
    table_only: "[=count]    just produce the target position table, don't search for seeds"
    write_segments: "just produce the anchor segments table, don't perform gapped alignment"
    write_capsule: "write the target and seed word table to a file"
    target_capsule: "read the target seed word table from a file (this replaces the target specifier)"
  }
}