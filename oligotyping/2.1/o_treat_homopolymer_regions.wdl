version 1.0

task OTreatHomopolymerRegions {
  input {
    String? input_alignment
    String? output_fast_a
    String? log
  }
  command <<<
    o-treat-homopolymer-regions \
      ~{if defined(input_alignment) then ("--input-alignment " +  '"' + input_alignment + '"') else ""} \
      ~{if defined(output_fast_a) then ("--output-fasta " +  '"' + output_fast_a + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    input_alignment: "align2first output (.paf file)"
    output_fast_a: "Output FASTA file to store homopolymer-treated sequences"
    log: "Log file. Default, STDOUT."
  }
}