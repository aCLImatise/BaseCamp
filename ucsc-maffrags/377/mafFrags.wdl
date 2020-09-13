version 1.0

task MafFrags {
  input {
    File? orgs
    Boolean? be_done_two
    Boolean? thick_only
    Boolean? me_first
    Boolean? tx_starts
    Boolean? ref_coords
    String database
    String track
    String in_dot_bed
  }
  command <<<
    mafFrags \
      ~{database} \
      ~{track} \
      ~{in_dot_bed} \
      ~{if defined(orgs) then ("-orgs " +  '"' + orgs + '"') else ""} \
      ~{if (be_done_two) then "-bed12" else ""} \
      ~{if (thick_only) then "-thickOnly" else ""} \
      ~{if (me_first) then "-meFirst" else ""} \
      ~{if (tx_starts) then "-txStarts" else ""} \
      ~{if (ref_coords) then "-refCoords" else ""}
  >>>
  parameter_meta {
    orgs: "- File with list of databases/organisms in order"
    be_done_two: "- If set, in.bed is a bed 12 file, including exons"
    thick_only: "- Only extract subset between thickStart/thickEnd"
    me_first: "- Put native sequence first in maf"
    tx_starts: "- Add MAF txstart region definitions ('r' lines) using BED name\\nand output actual reference genome coordinates in MAF."
    ref_coords: "- output actual reference genome coordinates in MAF."
    database: ""
    track: ""
    in_dot_bed: ""
  }
  output {
    File out_stdout = stdout()
  }
}