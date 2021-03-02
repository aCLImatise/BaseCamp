version 1.0

task MakerToProteindbrb {
  input {
    File? explicitly_named_output
    Boolean? debug
    Boolean? info
    File? prot_fast_a
    Int maker_dot_gff_three
  }
  command <<<
    maker_to_proteindb_rb \
      ~{maker_dot_gff_three} \
      ~{if defined(explicitly_named_output) then ("--output " +  '"' + explicitly_named_output + '"') else ""} \
      ~{if (debug) then "--debug" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if defined(prot_fast_a) then ("--prot-fasta " +  '"' + prot_fast_a + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    explicitly_named_output: "An explicitly named output file."
    debug: "Run in debug mode [false]"
    info: "Include CDS Coordinates [false]"
    prot_fast_a: "A fasta file \\\\ncontaining protein sequences for each transcript\\n"
    maker_dot_gff_three: ""
  }
  output {
    File out_stdout = stdout()
    File out_explicitly_named_output = "${in_explicitly_named_output}"
  }
}