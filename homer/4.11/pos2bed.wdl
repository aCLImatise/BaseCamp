version 1.0

task Pos2bed.pl {
  input {
    File? output_to_file
    Boolean? bed
    String? track
    Boolean? set_th_column
    Boolean? allow_th_column
    String? color
    String peak_slash_pos_file
  }
  command <<<
    pos2bed.pl \
      ~{peak_slash_pos_file} \
      ~{if defined(output_to_file) then ("-o " +  '"' + output_to_file + '"') else ""} \
      ~{true="-bed" false="" bed} \
      ~{if defined(track) then ("-track " +  '"' + track + '"') else ""} \
      ~{true="-5" false="" set_th_column} \
      ~{true="-float" false="" allow_th_column} \
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
}