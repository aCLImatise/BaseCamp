version 1.0

task MbExtractSites {
  input {
    String? transition_from
    String? gff_file
    String extract_sites
  }
  command <<<
    mb-extract-sites \
      ~{extract_sites} \
      ~{if defined(transition_from) then ("--transition_from " +  '"' + transition_from + '"') else ""} \
      ~{if defined(gff_file) then ("--gff_file " +  '"' + gff_file + '"') else ""}
  >>>
  parameter_meta {
    transition_from: ""
    gff_file: ""
    extract_sites: ""
  }
}