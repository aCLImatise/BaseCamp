version 1.0

task Startcodondistrib {
  input {
    Boolean? _diruse_column
    File sequence_file
    String coords
  }
  command <<<
    start_codon_distrib \
      ~{sequence_file} \
      ~{coords} \
      ~{if (_diruse_column) then "-d" else ""}
  >>>
  parameter_meta {
    _diruse_column: "--dir\\nUse the 4th column of each input line to specify the direction\\nof the sequence.  Positive is forward, negative is reverse\\nThe input sequence is assumed to be circular\\n-h\\nPrint this message\\n-w\\n--nowrap\\nUse the actual input coordinates without any wraparound\\nthat would be needed by a circular genome.  Without this\\noption, the output sequence is the shorter of the two ways\\naround the circle.  Use the -d option to specify direction\\nexplicitly.\\n-3\\n--3comma\\noutput only a comma separated list (no spaces) of atg, gtg, ttg"
    sequence_file: ""
    coords: ""
  }
  output {
    File out_stdout = stdout()
  }
}