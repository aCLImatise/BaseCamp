version 1.0

task Mbextractsites {
  input {
    File? gff_file
    String? transition_from
    String extract_sites
  }
  command <<<
    mb_extract_sites \
      ~{extract_sites} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""} \
      ~{if defined(transition_from) then ("--transition_from " +  '"' + transition_from + '"') else ""}
  >>>
  parameter_meta {
    gff_file: ""
    transition_from: ""
    extract_sites: ""
  }
  output {
    File out_stdout = stdout()
  }
}