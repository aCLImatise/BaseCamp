version 1.0

task ExtractChromLengthsrb {
  input {
    Boolean? fast_a_file
    Boolean? output_file
    String? r
    String extract_chrom_lengths
  }
  command <<<
    extractChromLengths_rb \
      ~{extract_chrom_lengths} \
      ~{if (fast_a_file) then "--fastaFile" else ""} \
      ~{if (output_file) then "--outputFile" else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    fast_a_file: "|-r   => FASTA sequence file"
    output_file: "|-o   => FASTA index files"
    r: ""
    extract_chrom_lengths: "-r ref.fa -o ref.chroms.txt "
  }
  output {
    File out_stdout = stdout()
  }
}