version 1.0

task Msaconverter {
  input {
    String? input_msa_file
    String? output_msa_file
    String? p
    String? q
  }
  command <<<
    msaconverter \
      ~{if defined(input_msa_file) then ("-i " +  '"' + input_msa_file + '"') else ""} \
      ~{if defined(output_msa_file) then ("-o " +  '"' + output_msa_file + '"') else ""} \
      ~{if defined(p) then ("-p " +  '"' + p + '"') else ""} \
      ~{if defined(q) then ("-q " +  '"' + q + '"') else ""}
  >>>
  parameter_meta {
    input_msa_file: "input msa file"
    output_msa_file: "output msa file"
    p: "input msa format [fasta]"
    q: "input msa format [phylip-relaxed]"
  }
}