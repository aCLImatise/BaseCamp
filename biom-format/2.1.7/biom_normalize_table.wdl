version 1.0

task BiomNormalizeTable {
  input {
    File? input_fp
    File? output_fp
    Boolean? relative_abund
    Boolean? presence_absence
    Boolean? axis
  }
  command <<<
    biom normalize-table \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{true="--relative-abund" false="" relative_abund} \
      ~{true="--presence-absence" false="" presence_absence} \
      ~{true="--axis" false="" axis}
  >>>
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "An output file-path"
    relative_abund: "convert table to relative abundance"
    presence_absence: "convert table to presence/absence"
    axis: "[sample|observation] The axis to normalize over"
  }
}