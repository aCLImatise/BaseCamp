version 1.0

task ExtractChromLengthsrb {
  input {
    Boolean? fast_a_file
    Boolean? output_file
    String? r
  }
  command <<<
    extractChromLengths_rb \
      ~{if (fast_a_file) then "--fastaFile" else ""} \
      ~{if (output_file) then "--outputFile" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    fast_a_file: "|-r   => FASTA sequence file"
    output_file: "|-o   => FASTA index files"
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}