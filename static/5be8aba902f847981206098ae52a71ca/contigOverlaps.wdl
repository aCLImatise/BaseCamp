version 1.0

task ContigOverlaps {
  input {
    Boolean? percent_identity
    String first_assembly_bams_dot_fof_n
    String second_assembly_bams_dot_fof_n
  }
  command <<<
    contigOverlaps \
      ~{first_assembly_bams_dot_fof_n} \
      ~{second_assembly_bams_dot_fof_n} \
      ~{true="--percentIdentity" false="" percent_identity}
  >>>
  parameter_meta {
    percent_identity: "arg  The minimum end-to-end % identity of qualifying reads (default: 97)"
    first_assembly_bams_dot_fof_n: ""
    second_assembly_bams_dot_fof_n: ""
  }
}