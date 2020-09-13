version 1.0

task Multiextract {
  input {
    Boolean? two
    Boolean? two_fields
    Boolean? d
    Boolean? dir
    Boolean? help
    String? l
    String? min_len
    Boolean? s
    Boolean? no_start
    Boolean? t
    Boolean? no_stop
    Boolean? w
    Boolean? nowrap
    File sequence_file
    String coords
  }
  command <<<
    multi_extract \
      ~{sequence_file} \
      ~{coords} \
      ~{if (two) then "-2" else ""} \
      ~{if (two_fields) then "--2_fields" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (help) then "--help" else ""} \
      ~{if defined(l) then ("-l " +  '"' + l + '"') else ""} \
      ~{if defined(min_len) then ("--minlen " +  '"' + min_len + '"') else ""} \
      ~{if (s) then "-s" else ""} \
      ~{if (no_start) then "--nostart" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (no_stop) then "--nostop" else ""} \
      ~{if (w) then "-w" else ""} \
      ~{if (nowrap) then "--nowrap" else ""}
  >>>
  parameter_meta {
    two: ""
    two_fields: "Output each sequence as 2 fields (tag and sequence) on a single line"
    d: ""
    dir: "Use the 4th column of each input line to specify the direction\\nof the sequence.  Positive is forward, negative is reverse\\nThe input sequence is assumed to be circular"
    help: "Print this message"
    l: ""
    min_len: "Don't output any sequence shorter than <n> characters"
    s: ""
    no_start: "Omit the first 3 characters of each output string"
    t: ""
    no_stop: "Omit the last 3 characters of each output string"
    w: ""
    nowrap: "Use the actual input coordinates without any wraparound\\nthat would be needed by a circular genome.  Without this\\noption, the output sequence is the shorter of the two ways\\naround the circle.  Use the -d option to specify direction\\nexplicitly.\\n"
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}