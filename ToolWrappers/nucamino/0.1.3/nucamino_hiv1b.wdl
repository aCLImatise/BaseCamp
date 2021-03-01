version 1.0

task NucaminoHiv1b {
  input {
    Boolean? quiet
    Int? in_del_codon_opening_bonus
    Int? in_del_codon_extension_bonus
    Int? stop_codon_penalty
    Int? gap_opening_penalty
    Int? gap_extension_penalty
    Int? go_routines
    String? output_format
    File? fasta_file_contains
    String? output_destination_thealignment
    Boolean? ppr_of
    String g__gene
  }
  command <<<
    nucamino hiv1b \
      ~{g__gene} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(in_del_codon_opening_bonus) then ("--indel-codon-opening-bonus " +  '"' + in_del_codon_opening_bonus + '"') else ""} \
      ~{if defined(in_del_codon_extension_bonus) then ("--indel-codon-extension-bonus " +  '"' + in_del_codon_extension_bonus + '"') else ""} \
      ~{if defined(stop_codon_penalty) then ("--stop-codon-penalty " +  '"' + stop_codon_penalty + '"') else ""} \
      ~{if defined(gap_opening_penalty) then ("--gap-opening-penalty " +  '"' + gap_opening_penalty + '"') else ""} \
      ~{if defined(gap_extension_penalty) then ("--gap-extension-penalty " +  '"' + gap_extension_penalty + '"') else ""} \
      ~{if defined(go_routines) then ("--goroutines " +  '"' + go_routines + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{if defined(fasta_file_contains) then ("--input " +  '"' + fasta_file_contains + '"') else ""} \
      ~{if defined(output_destination_thealignment) then ("--output " +  '"' + output_destination_thealignment + '"') else ""} \
      ~{if (ppr_of) then "--pprof" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    quiet: "hide non-error information"
    in_del_codon_opening_bonus: "bonus score when a indel\\ncodon was opened (default:\\n0)"
    in_del_codon_extension_bonus: "bonus score when a indel\\ncodon was extended\\n(default: 2)"
    stop_codon_penalty: "penalty score when a stop\\ncodon was met (default: 4)"
    gap_opening_penalty: "penalty score when a gap\\nwas opened (default: 10)"
    gap_extension_penalty: "penalty score when a gap\\nwas extended (default: 2)"
    go_routines: "number of goroutines the\\nalignment will use. Use\\nthe core number when\\nequals to 0 (default: 0)"
    output_format: "[tsv|json]    output format of the\\nalignment result (default:\\ntsv)"
    fasta_file_contains: "FASTA file contains one or\\nmore DNA sequences\\n(default: -)"
    output_destination_thealignment: "output destination of the\\nalignment results\\n(default: -)"
    ppr_of: "output pprof benchmark\\nresult\\n"
    g__gene: "-g, --gene=[GAG|POL|GP41]                      gene(s) the input"
  }
  output {
    File out_stdout = stdout()
  }
}