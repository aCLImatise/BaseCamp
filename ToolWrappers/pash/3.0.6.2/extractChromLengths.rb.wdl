version 1.0

task ExtractChromLengthsrb {
  input {
    Boolean? fast_a_file
    Boolean? output_file
    String extract_chrom_lengths
  }
  command <<<
    extractChromLengths_rb \
      ~{extract_chrom_lengths} \
      ~{if (fast_a_file) then "--fastaFile" else ""} \
      ~{if (output_file) then "--outputFile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: "=> FASTA sequence file"
    output_file: "=> FASTA index files"
    extract_chrom_lengths: "-r ref.fa -o ref.chroms.txt "
  }
  output {
    File out_stdout = stdout()
  }
}