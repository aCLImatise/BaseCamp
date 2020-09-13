version 1.0

task Startcodondistrib {
  input {
    Boolean? d
    Boolean? dir
    Boolean? w
    Boolean? nowrap
    Boolean? three
    Boolean? three_comma
    File sequence_file
    String coords
  }
  command <<<
    start_codon_distrib \
      ~{sequence_file} \
      ~{coords} \
      ~{if (d) then "-d" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (w) then "-w" else ""} \
      ~{if (nowrap) then "--nowrap" else ""} \
      ~{if (three) then "-3" else ""} \
      ~{if (three_comma) then "--3comma" else ""}
  >>>
  parameter_meta {
    d: ""
    dir: "Use the 4th column of each input line to specify the direction\\nof the sequence.  Positive is forward, negative is reverse\\nThe input sequence is assumed to be circular"
    w: ""
    nowrap: "Use the actual input coordinates without any wraparound\\nthat would be needed by a circular genome.  Without this\\noption, the output sequence is the shorter of the two ways\\naround the circle.  Use the -d option to specify direction\\nexplicitly."
    three: ""
    three_comma: "output only a comma separated list (no spaces) of atg, gtg, ttg"
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}