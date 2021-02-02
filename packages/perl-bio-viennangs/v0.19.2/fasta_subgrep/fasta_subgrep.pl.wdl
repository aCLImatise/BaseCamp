version 1.0

task FastaSubgreppl {
  input {
    Boolean? fa
    Boolean? start
    Boolean? end
    Boolean? id
    Boolean? strand
    Boolean? man
  }
  command <<<
    fasta_subgrep_pl \
      ~{if (fa) then "--fa" else ""} \
      ~{if (start) then "--start" else ""} \
      ~{if (end) then "--end" else ""} \
      ~{if (id) then "--id" else ""} \
      ~{if (strand) then "--strand" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  parameter_meta {
    fa: "Input file in Fasta format (mandatory)"
    start: "Start of the sequence interval to extract"
    end: "End of the sequence interval to extract"
    id: "Fasta ID of the sequence to extract from. This is only required for\\nmulti Fasta input files."
    strand: "Specify the strand to extract sequence data from. Allowed arguments\\nare \\\"+\\\" amd \\\"-\\\". In the latter case, retrieve reverse complement of\\nthe sequence interval from \\\"start\\\" to \\\"end\\\"."
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
  }
}