version 1.0

task Pos2bedpl {
  input {
    File? output_to_file
    Boolean? bed
    String? track
    Boolean? set_th_column
    Boolean? allow_th_column
    File? color
    File peak_slash_pos_file
  }
  command <<<
    pos2bed_pl \
      ~{peak_slash_pos_file} \
      ~{if defined(output_to_file) then ("-o " +  '"' + output_to_file + '"') else ""} \
      ~{if (bed) then "-bed" else ""} \
      ~{if defined(track) then ("-track " +  '"' + track + '"') else ""} \
      ~{if (set_th_column) then "-5" else ""} \
      ~{if (allow_th_column) then "-float" else ""} \
      ~{if defined(color) then ("-color " +  '"' + color + '"') else ""}
  >>>
  parameter_meta {
    output_to_file: "(Output to file)"
    bed: "(Output to file with same name as input with *.bed extension)"
    track: "(Include track line with name for uploading to UCSC Genome Browser)"
    set_th_column: "(Set 5th column to the value 1 instead of value in 6th column of pos file)"
    allow_th_column: "(Allow the 5th column to be a floating point number, default: integer)"
    color: "(color strands red and blue, will also add a track line to file)"
    peak_slash_pos_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_to_file = "${in_output_to_file}"
  }
}