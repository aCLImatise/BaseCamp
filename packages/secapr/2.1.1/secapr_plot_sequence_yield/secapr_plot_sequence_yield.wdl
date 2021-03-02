version 1.0

task SecaprPlotSequenceYield {
  input {
    Directory? extracted_contigs
    File? alignments
    File? read_cov
    Int? coverage_norm
    Directory? directory_store_plots
    String plot_overview_extracted
  }
  command <<<
    secapr plot_sequence_yield \
      ~{plot_overview_extracted} \
      ~{if defined(extracted_contigs) then ("--extracted_contigs " +  '"' + extracted_contigs + '"') else ""} \
      ~{if defined(alignments) then ("--alignments " +  '"' + alignments + '"') else ""} \
      ~{if defined(read_cov) then ("--read_cov " +  '"' + read_cov + '"') else ""} \
      ~{if defined(coverage_norm) then ("--coverage_norm " +  '"' + coverage_norm + '"') else ""} \
      ~{if defined(directory_store_plots) then ("--output " +  '"' + directory_store_plots + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/secapr:2.1.1--pyh3252c3a_0"
  }
  parameter_meta {
    extracted_contigs: "The directory containing the extracted target contigs\\n(output from find_target_contigs function)."
    alignments: "The directory containing the contig alignments.\\nProvide this path if you want to add a line to the\\nplot showing for which loci alignments could be\\ncreated."
    read_cov: "The directory containing the reference assembly\\nresults. Provide this path if you want to display the\\nread coverage for each locus and sample."
    coverage_norm: "Here you can adjust the color scale of the read-\\ncoverage plot. This value will define the maximum of\\nthe color scale, e.g. if set to '10' read-coverage of\\n10 and above will be colored black, while everything\\nbelow (0-10) will be stretched across the color\\nspectrum from yellow, red to black."
    directory_store_plots: "The directory in which to store the plots."
    plot_overview_extracted: "Plot overview of extracted sequences"
  }
  output {
    File out_stdout = stdout()
    Directory out_extracted_contigs = "${in_extracted_contigs}"
  }
}