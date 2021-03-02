version 1.0

task BuildFastaIndexrb {
  input {
    Boolean? fast_a_file
    Boolean? f_of_file
    Boolean? offset_file
    Boolean? sequence_file
  }
  command <<<
    buildFastaIndex_rb \
      ~{if (fast_a_file) then "--fastaFile" else ""} \
      ~{if (f_of_file) then "--fofFile" else ""} \
      ~{if (offset_file) then "--offsetFile" else ""} \
      ~{if (sequence_file) then "--sequenceFile" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    fast_a_file: "=> FASTA sequence file"
    f_of_file: "=> list of fasta files"
    offset_file: "=> FASTA index files"
    sequence_file: "=> file containing concatenated nucleotide sequence"
  }
  output {
    File out_stdout = stdout()
  }
}