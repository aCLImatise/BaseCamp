version 1.0

task Mbextractsites {
  input {
    String? transition_from
    File? gff_file
    String fast_a_file
  }
  command <<<
    mb_extract_sites \
      ~{fast_a_file} \
      ~{if defined(transition_from) then ("--transition_from " +  '"' + transition_from + '"') else ""} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""}
  >>>
  parameter_meta {
    transition_from: ""
    gff_file: ""
    fast_a_file: "output_file"
  }
  output {
    File out_stdout = stdout()
  }
}