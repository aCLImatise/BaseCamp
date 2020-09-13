version 1.0

task Glam2format {
  input {
    File? output_file_stdout
    Boolean? make_compact_alignment
    Boolean? sequence_file_flanking
  }
  command <<<
    glam2format \
      ~{if (output_file_stdout) then "-o" else ""} \
      ~{if (make_compact_alignment) then "-c" else ""} \
      ~{if (sequence_file_flanking) then "-f" else ""}
  >>>
  parameter_meta {
    output_file_stdout: ": output file (stdout)"
    make_compact_alignment: ": make a compact alignment"
    sequence_file_flanking: ": sequence file for flanking sequences"
  }
  output {
    File out_stdout = stdout()
    File out_output_file_stdout = "${in_output_file_stdout}"
  }
}