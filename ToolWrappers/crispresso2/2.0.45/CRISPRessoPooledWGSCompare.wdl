version 1.0

task CRISPRessoPooledWGSCompare {
  input {
    String? comparison
    String? name
    Int? sample_one_name
    Int? sample_two_name
    Directory? output_folder
    Boolean? save_also_png
    Boolean? debug
    Int cris_presso_pooled_wgs_output_folder_two
  }
  command <<<
    CRISPRessoPooledWGSCompare \
      ~{cris_presso_pooled_wgs_output_folder_two} \
      ~{if defined(comparison) then ("-Comparison " +  '"' + comparison + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(sample_one_name) then ("--sample_1_name " +  '"' + sample_one_name + '"') else ""} \
      ~{if defined(sample_two_name) then ("--sample_2_name " +  '"' + sample_two_name + '"') else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if (save_also_png) then "--save_also_png" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/crispresso2:2.0.45--py27h3dcb392_0"
  }
  parameter_meta {
    comparison: "two CRISPRessoPooled or CRISPRessoWGS analyses-\\n_         ____________________________________           _\\n'  )      | __  __  __     __ __        __  __ |         '  )\\n.-'       ||__)/  \\/  \\|  |_ |  \\ /|  |/ _ (_  |         .-'\\n(____      ||   \\__/\\__/|__|__|__// |/\\|\\__)__) |        (____"
    name: "Output name (default: )"
    sample_one_name: "Sample 1 name (default: Sample_1)"
    sample_two_name: "Sample 2 name (default: Sample_2)"
    output_folder: "Number of processes to use for CRISPResso comparison\\n(default: 1)"
    save_also_png: "Save also .png images additionally to .pdf files\\n(default: False)"
    debug: "Show debug messages (default: False)"
    cris_presso_pooled_wgs_output_folder_two: "Second output folder with CRISPRessoPooled or\\nCRISPRessoWGS analysis"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_folder = "${in_output_folder}"
  }
}