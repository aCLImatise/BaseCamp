version 1.0

task FastaSubgrep.pl {
  input {
    Boolean? fa
    Boolean? start
    Boolean? end
    Boolean? id
    Boolean? strand
    Boolean? man
  }
  command <<<
    fasta_subgrep.pl \
      ~{true="--fa" false="" fa} \
      ~{true="--start" false="" start} \
      ~{true="--end" false="" end} \
      ~{true="--id" false="" id} \
      ~{true="--strand" false="" strand} \
      ~{true="--man" false="" man}
  >>>
  parameter_meta {
    fa: "Input file in Fasta format (mandatory)"
    start: "Start of the sequence interval to extract"
    end: "End of the sequence interval to extract"
    id: "Fasta ID of the sequence to extract from. This is only required for multi Fasta input files."
    strand: "Specify the strand to extract sequence data from. Allowed arguments are \"+\" amd \"-\". In the latter case, retrieve reverse complement of the sequence interval from \"start\" to \"end\"."
    man: "Prints the manual page and exits"
  }
}