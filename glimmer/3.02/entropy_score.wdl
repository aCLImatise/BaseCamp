version 1.0

task Entropyscore {
  input {
    Boolean? d
    Boolean? dir
    File? e
    File? entropy
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
    entropy_score \
      ~{sequence_file} \
      ~{coords} \
      ~{if (d) then "-d" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if defined(e) then ("-E " +  '"' + e + '"') else ""} \
      ~{if defined(entropy) then ("--entropy " +  '"' + entropy + '"') else ""} \
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
    d: ""
    dir: "Use the 4th column of each input line to specify the direction\\nof the sequence.  Positive is forward, negative is reverse\\nThe input sequence is assumed to be circular"
    e: ""
    entropy: "Read entropy profiles from <filename>.  Format is one header\\nline, then 20 lines of 3 columns each.  Columns are amino acid,\\npositive entropy, negative entropy.  Rows must be in order\\nby amino acid code letter"
    help: "Print this message"
    l: ""
    min_len: "Don't output any sequence shorter than <n> characters"
    s: ""
    no_start: "Omit the first 3 characters of each specified string"
    t: ""
    no_stop: "Omit the last 3 characters of each specified string"
    w: ""
    nowrap: "Use the actual input coordinates without any wraparound\\nthat would be needed by a circular genome.  Without this\\noption, the output sequence is the shorter of the two ways\\naround the circle.  Use the -d option to specify direction\\nexplicitly.\\n"
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}