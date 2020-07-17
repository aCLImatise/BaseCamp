version 1.0

task RgtVizBedProfile {
  input {
    Boolean? input_experimental_matrix
    Boolean? directory_name_output
    Boolean? title_shown_default
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
    rgt-viz bed_profile \
      ~{true="-i" false="" input_experimental_matrix} \
      ~{true="-o" false="" directory_name_output} \
      ~{true="-t" false="" title_shown_default} \
      ~{true="-organism" false="" organism} \
      ~{true="-biotype" false="" biotype} \
      ~{true="-repeats" false="" repeats} \
      ~{true="-genposi" false="" gen_posi} \
      ~{true="-labels" false="" labels} \
      ~{true="-sources" false="" sources} \
      ~{true="-strand" false="" strand} \
      ~{true="-other" false="" other} \
      ~{true="-background" false="" background} \
      ~{true="-coverage" false="" coverage} \
      ~{true="-test" false="" test}
  >>>
  parameter_meta {
    input_experimental_matrix: "Input experimental matrix or Input BED file or Input directory which contains BED files"
    directory_name_output: "The directory name for the output files. For example, project name. (default: None)"
    title_shown_default: "The title shown on the top of the plot and also the folder name. (default: bed_profile)"
    organism: "Define the organism. (default: None)"
    biotype: "Define the directory for biotype BED files."
    repeats: "Define the directory for repeats BED files."
    gen_posi: "Define the directory for the generic position BED files. (exons, introns, and intergenic regions)"
    labels: "Define the labels for more BED sets"
    sources: "Define the directories for more BED sets corresponding to the labels"
    strand: "Define whether to perform strand-specific comparison for each reference corresponding to the labels (T or F)"
    other: "Define whether to count \"else\" for each reference corresponding to the labels (T or F)"
    background: "Add the background to the first row of the figures (T or F)"
    coverage: "Calculate the overlapping region by coverage in bp instead of simple counting"
    test: "test script"
  }
}