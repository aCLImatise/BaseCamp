version 1.0

task Mbextractsites {
  input {
    File? gff_file
    String? transition_from
    String fast_a_file
  }
  command <<<
    mb_extract_sites \
      ~{fast_a_file} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""} \
      ~{if defined(transition_from) then ("--transition_from " +  '"' + transition_from + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gff_file: ""
    transition_from: ""
    fast_a_file: "output_file"
  }
  output {
    File out_stdout = stdout()
  }
}