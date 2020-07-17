version 1.0

task GenReliabDot.pl {
  input {
    File? reliability_file
    File? alignment_file
    String? probabilities
    String prg_name
  }
  command <<<
    gen-reliab-dot.pl \
      ~{prg_name} \
      ~{if defined(reliability_file) then ("-f " +  '"' + reliability_file + '"') else ""} \
      ~{if defined(alignment_file) then ("-a " +  '"' + alignment_file + '"') else ""} \
      ~{if defined(probabilities) then ("-s " +  '"' + probabilities + '"') else ""}
  >>>
  parameter_meta {
    reliability_file: "reliability file"
    alignment_file: "alignment file"
    probabilities: "probabilities"
    prg_name: ""
  }
}