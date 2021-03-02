version 1.0

task Pt2to3 {
  input {
    Boolean? reverse
    Boolean? no_ignore_previous
    File? output_file_write
    Boolean? in_place
    File filename
  }
  command <<<
    pt2to3 \
      ~{filename} \
      ~{if (reverse) then "--reverse" else ""} \
      ~{if (no_ignore_previous) then "--no-ignore-previous" else ""} \
      ~{if defined(output_file_write) then ("-o " +  '"' + output_file_write + '"') else ""} \
      ~{if (in_place) then "--inplace" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    reverse: "reverts changes, going from 3.x -> 2.x."
    no_ignore_previous: "ignores previous_api() calls."
    output_file_write: "output file to write to."
    in_place: "overwrites the file in-place."
    filename: "path to input file."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_write = "${in_output_file_write}"
  }
}