version 1.0

task Lncrna {
  input {
    String? assembly
    File? bed_file
    String l_ncrna_discovery_do_tpy
  }
  command <<<
    lncrna \
      ~{l_ncrna_discovery_do_tpy} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if defined(bed_file) then ("--bedfile " +  '"' + bed_file + '"') else ""}
  >>>
  parameter_meta {
    assembly: ""
    bed_file: ""
    l_ncrna_discovery_do_tpy: ""
  }
  output {
    File out_stdout = stdout()
  }
}