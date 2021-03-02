version 1.0

task Msaconverter {
  input {
    File? input_msa_file
    File? output_msa_file
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_msa_file: "input msa file"
    output_msa_file: "output msa file"
    p: "input msa format [fasta]"
    q: "input msa format [phylip-relaxed]\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_msa_file = "${in_output_msa_file}"
  }
}