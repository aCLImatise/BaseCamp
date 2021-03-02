version 1.0

task KtImportPhymmBL {
  input {
    String phy_mm_bl_results
    String magnitudes
    String name
  }
  command <<<
    ktImportPhymmBL \
      ~{phy_mm_bl_results} \
      ~{magnitudes} \
      ~{name}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    phy_mm_bl_results: "PhymmBL results files (results.03.*). Results can also be\\nfrom Phymm alone (results.01.*), but [-p] must be\\nspecified. By default, separate datasets will be created\\nfor each input (see [-c])."
    magnitudes: "Optional file listing query IDs with magnitudes, separated\\nby tabs. This can be used to account for read length or\\ncontig depth to obtain a more accurate representation of\\nabundance. By default, query sequences without specified\\nmagnitudes will be assigned a magnitude of 1. Magnitude\\nfiles for assemblies in ACE format can be created with\\nktGetContigMagnitudes."
    name: "A name to show in the list of datasets in the Krona chart\\n(if multiple input files are present and [-c] is not\\nspecified). By default, the basename of the file will be\\nused.\\n_________"
  }
  output {
    File out_stdout = stdout()
  }
}