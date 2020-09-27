version 1.0

task BuildFastaIndexrb {
  input {
    Boolean? fast_a_file
    Boolean? f_of_file
    Boolean? offset_file
    Boolean? sequence_file
    String? o
    String? f
  }
  command <<<
    buildFastaIndex_rb \
      ~{if (fast_a_file) then "--fastaFile" else ""} \
      ~{if (f_of_file) then "--fofFile" else ""} \
      ~{if (offset_file) then "--offsetFile" else ""} \
      ~{if (sequence_file) then "--sequenceFile" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    fast_a_file: "|-r   => FASTA sequence file"
    f_of_file: "|-f   => list of fasta files"
    offset_file: "|-o   => FASTA index files"
    sequence_file: "|-s   => file containing concatenated nucleotide sequence"
    o: ""
    f: ""
  }
  output {
    File out_stdout = stdout()
  }
}