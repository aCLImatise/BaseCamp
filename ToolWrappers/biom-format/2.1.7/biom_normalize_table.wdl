version 1.0

task BiomNormalizetable {
  input {
    File? input_fp
    File? output_fp
    Boolean? relative_abund
    Boolean? presence_absence
    Boolean? axis
  }
  command <<<
    biom normalize_table \
      ~{if defined(input_fp) then ("--input-fp " +  '"' + input_fp + '"') else ""} \
      ~{if defined(output_fp) then ("--output-fp " +  '"' + output_fp + '"') else ""} \
      ~{if (relative_abund) then "--relative-abund" else ""} \
      ~{if (presence_absence) then "--presence-absence" else ""} \
      ~{if (axis) then "--axis" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_fp: "The input BIOM table  [required]"
    output_fp: "An output file-path"
    relative_abund: "convert table to relative abundance"
    presence_absence: "convert table to presence/absence"
    axis: "[sample|observation]\\nThe axis to normalize over"
  }
  output {
    File out_stdout = stdout()
    File out_output_fp = "${in_output_fp}"
  }
}