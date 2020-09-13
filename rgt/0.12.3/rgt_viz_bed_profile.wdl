version 1.0

task RgtvizBedProfile {
  input {
    Boolean? input_experimental_matrix
    Directory? directory_name_output
    Boolean? title_shown_top
    Boolean? organism
    Boolean? biotype
    Boolean? repeats
    Boolean? gen_posi
    Boolean? labels
    Boolean? sources
    Boolean? strand
    Boolean? other
    Boolean? background
    Boolean? coverage
    Boolean? test
  }
  command <<<
    rgt_viz bed_profile \
      ~{if (input_experimental_matrix) then "-i" else ""} \
      ~{if (directory_name_output) then "-o" else ""} \
      ~{if (title_shown_top) then "-t" else ""} \
      ~{if (organism) then "-organism" else ""} \
      ~{if (biotype) then "-biotype" else ""} \
      ~{if (repeats) then "-repeats" else ""} \
      ~{if (gen_posi) then "-genposi" else ""} \
      ~{if (labels) then "-labels" else ""} \
      ~{if (sources) then "-sources" else ""} \
      ~{if (strand) then "-strand" else ""} \
      ~{if (other) then "-other" else ""} \
      ~{if (background) then "-background" else ""} \
      ~{if (coverage) then "-coverage" else ""} \
      ~{if (test) then "-test" else ""}
  >>>
  parameter_meta {
    input_experimental_matrix: "Input experimental matrix or Input BED file or Input\\ndirectory which contains BED files"
    directory_name_output: "The directory name for the output files. For example,\\nproject name. (default: None)"
    title_shown_top: "The title shown on the top of the plot and also the folder\\nname. (default: bed_profile)"
    organism: "Define the organism. (default: None)"
    biotype: "Define the directory for biotype BED files."
    repeats: "Define the directory for repeats BED files."
    gen_posi: "Define the directory for the generic position BED files.\\n(exons, introns, and intergenic regions)"
    labels: "Define the labels for more BED sets"
    sources: "Define the directories for more BED sets corresponding to\\nthe labels"
    strand: "Define whether to perform strand-specific comparison for\\neach reference corresponding to the labels (T or F)"
    other: "Define whether to count \\\"else\\\" for each reference\\ncorresponding to the labels (T or F)"
    background: "Add the background to the first row of the figures (T or F)"
    coverage: "Calculate the overlapping region by coverage in bp instead\\nof simple counting"
    test: "test script"
  }
  output {
    File out_stdout = stdout()
    Directory out_directory_name_output = "${in_directory_name_output}"
  }
}