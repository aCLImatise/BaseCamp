version 1.0

task MafFrags {
  input {
    Boolean? ref_coords
    String database
    String track
    String in_dot_bed
    String out_dot_maf
  }
  command <<<
    mafFrags \
      ~{database} \
      ~{track} \
      ~{in_dot_bed} \
      ~{out_dot_maf} \
      ~{true="-refCoords" false="" ref_coords}
  >>>
  parameter_meta {
    ref_coords: "- output actual reference genome coordinates in MAF."
    database: ""
    track: ""
    in_dot_bed: ""
    out_dot_maf: ""
  }
}