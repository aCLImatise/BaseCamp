version 1.0

task Uncovered {
  input {
    Boolean? output_sequence_fields
    Boolean? dir
    String? min_len
    Boolean? no_start
    Boolean? no_stop
    Boolean? nowrap
    File sequence_file
    String coords
  }
  command <<<
    uncovered \
      ~{sequence_file} \
      ~{coords} \
      ~{if (output_sequence_fields) then "-2" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if (no_start) then "--nostart" else ""} \
      ~{if (no_stop) then "--nostop" else ""} \
      ~{if (nowrap) then "--nowrap" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_sequence_fields: "Output each sequence as 2 fields (tag and sequence) on a single line"
    dir: "Use the 4th column of each input line to specify the direction\\nof the sequence.  Positive is forward, negative is reverse\\nThe input sequence is assumed to be circular"
    min_len: "Don't output any sequence shorter than <n> characters"
    no_start: "Omit the first 3 characters of each <coords> region"
    no_stop: "Omit the last 3 characters of each <coords> region"
    nowrap: "Use the actual input coordinates without any wraparound\\nthat would be needed by a circular genome.  Without this\\noption, the output sequence is the shorter of the two ways\\naround the circle.  Use the -d option to specify direction\\nexplicitly.\\n"
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}