version 1.0

task GaasScaffold2AGP.pl {
  input {
    String? ref_file
    String? output_agp_file
    String? i
  }
  command <<<
    gaas_scaffold2AGP.pl \
      ~{if defined(ref_file) then ("-reffile " +  '"' + ref_file + '"') else ""} \
      ~{if defined(output_agp_file) then ("--output " +  '"' + output_agp_file + '"') else ""} \
      ~{if defined(i) then ("-i " +  '"' + i + '"') else ""}
  >>>
  parameter_meta {
    ref_file: "Input fasta file."
    output_agp_file: "Output agp file."
    i: ""
  }
}