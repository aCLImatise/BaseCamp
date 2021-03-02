version 1.0

task CnvkitpyFix {
  input {
    Boolean? cluster
    File? sample_id
    Boolean? no_gc
    Boolean? no_edge
    Boolean? no_r_mask
    File? output_file_name
    String target
    String anti_target
    String reference
  }
  command <<<
    cnvkit_py fix \
      ~{target} \
      ~{anti_target} \
      ~{reference} \
      ~{if (cluster) then "--cluster" else ""} \
      ~{if defined(sample_id) then ("--sample-id " +  '"' + sample_id + '"') else ""} \
      ~{if (no_gc) then "--no-gc" else ""} \
      ~{if (no_edge) then "--no-edge" else ""} \
      ~{if (no_r_mask) then "--no-rmask" else ""} \
      ~{if defined(output_file_name) then ("--output " +  '"' + output_file_name + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    cluster: "Compare and use cluster-specific values present in the\\nreference profile. (Requires that the reference\\nprofile was built with the --cluster option.)"
    sample_id: "Sample ID for target/antitarget files. Otherwise\\ninferred from file names."
    no_gc: "Skip GC correction."
    no_edge: "Skip edge-effect correction."
    no_r_mask: "Skip RepeatMasker correction."
    output_file_name: "Output file name.\\n"
    target: "Target coverage file (.targetcoverage.cnn)."
    anti_target: "Antitarget coverage file (.antitargetcoverage.cnn)."
    reference: "Reference coverage (.cnn)."
  }
  output {
    File out_stdout = stdout()
    File out_output_file_name = "${in_output_file_name}"
  }
}