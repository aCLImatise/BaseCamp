version 1.0

task CanSNPspl {
  input {
    Boolean? group
    Boolean? threshold
    Boolean? symbol
    String or
  }
  command <<<
    CanSNPs_pl \
      ~{or} \
      ~{if (group) then "--group" else ""} \
      ~{if (threshold) then "--threshold" else ""} \
      ~{if (symbol) then "--symbol" else ""}
  >>>
  parameter_meta {
    group: "Group inforamtion in tab-delimited text file [mutually exclusive to list]\\nex:   ID               Group\\nfasta_header_A   A\\nfasta_header_B   A\\nfasta_header_C   B\\nfasta_header_D   B"
    threshold: "Fraction of nucleotide in a group for defining Canonical SNPs (default :0.5)"
    symbol: "Not Canonical nt will use symbol in the output (default: \\\"-\\\")"
    or: "--list     file with a list fasta headers. one per line [mutually exclusive to group]\\nThe list will be treated as One group. All other sequences in the input\\nalignment will be as Another group."
  }
  output {
    File out_stdout = stdout()
  }
}