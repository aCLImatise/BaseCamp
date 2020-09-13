version 1.0

task BuildFastaIndexrb {
  input {
    Boolean? fast_a_file
    Boolean? f_of_file
    Boolean? offset_file
    Boolean? sequence_file
    String? o
    String? f
    String build_fast_a_index_do_trb
  }
  command <<<
    buildFastaIndex_rb \
      ~{build_fast_a_index_do_trb} \
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
    build_fast_a_index_do_trb: "-f allReads.fof -o offsets.txt -s sequence.txt "
  }
  output {
    File out_stdout = stdout()
  }
}