version 1.0

task ComputeOrderedMatrix {
  input {
    Array[String] score_filename
    Array[String] regions_filename
    String? out_filename
    Array[String] group_using_samples
    Array[Int] number_of_processors
    Int? outfile_sorted_regions
    String? output_reference_matrix
    Int? k_means
    Int? hc_lust
    Array[Int] before_region_start_length
    Array[Int] after_region_start_length
    File? plot_output
    String? config
  }
  command <<<
    computeOrderedMatrix \
      ~{if defined(score_filename) then ("--scoreFileName " +  '"' + score_filename + '"') else ""} \
      ~{if defined(regions_filename) then ("--regionsFileName " +  '"' + regions_filename + '"') else ""} \
      ~{if defined(out_filename) then ("--outFileName " +  '"' + out_filename + '"') else ""} \
      ~{if defined(group_using_samples) then ("--groupUsingSamples " +  '"' + group_using_samples + '"') else ""} \
      ~{if defined(number_of_processors) then ("--numberOfProcessors " +  '"' + number_of_processors + '"') else ""} \
      ~{if defined(outfile_sorted_regions) then ("--outFileSortedRegions " +  '"' + outfile_sorted_regions + '"') else ""} \
      ~{if defined(output_reference_matrix) then ("--outputReferenceMatrix " +  '"' + output_reference_matrix + '"') else ""} \
      ~{if defined(k_means) then ("--kmeans " +  '"' + k_means + '"') else ""} \
      ~{if defined(hc_lust) then ("--hclust " +  '"' + hc_lust + '"') else ""} \
      ~{if defined(before_region_start_length) then ("--beforeRegionStartLength " +  '"' + before_region_start_length + '"') else ""} \
      ~{if defined(after_region_start_length) then ("--afterRegionStartLength " +  '"' + after_region_start_length + '"') else ""} \
      ~{if defined(plot_output) then ("--plotOutput " +  '"' + plot_output + '"') else ""} \
      ~{if defined(config) then ("--config " +  '"' + config + '"') else ""}
  >>>
  parameter_meta {
    score_filename: "bigwig files, the ordered matrix is computedfrom.\\n(default: None)"
    regions_filename: "BED files definig the genomic regions of the\\nmatrix.Multiple files can be provided, but the per\\ngroup information will be lost due to the clustering\\n(default: None)"
    out_filename: "Matrix clustered by the given reference samples\\n(default: None)"
    group_using_samples: "sample indices (order of the bigwig files given via\\n-S).It is 1-based and is used to define the reference\\nsamples. The reference samples will be used for\\nsorting/clustering the regions (given bed files),\\nbefore all samples will be used to generate the output\\nmatrix. Several indices can be added while separated\\nby space from each other. Default is None and will\\ntake all the samples into account to sort/cluster the\\nregions. (default: None)"
    number_of_processors: "From deepTools doc: Number of processors to use. Type\\n\\\"max/2\\\" to use half the maximum number of processors\\nor \\\"max\\\" to use all available processors. (default:\\n[1, 1])"
    outfile_sorted_regions: "From deepTools doc: File name in which the regions are\\nsaved after skiping zeros or min/max threshold values.\\nThe order of the regions in the file follows the\\nsorting order selected. This is useful, for example,\\nto generate other heatmaps keeping the sorting of the\\nfirst heatmap. (default: None)"
    output_reference_matrix: "Matrix on the reference sampels only before clustering\\n(default: None)"
    k_means: "number of clusters in k-means clustering (default:\\nNone)"
    hc_lust: "Number of clusters to compute using\\nhierarchicalclustering as defined by deepTools\\nplotHeatmap (default: None)"
    before_region_start_length: "From deepTools doc: Distance upstream of the start\\nsite of the regions defined in the region file. If the\\nregions are genes, this would be the distance upstream\\nof the transcription start site. (default: [0, 0])"
    after_region_start_length: "From deepTools doc: Distance downstream of the end\\nsite of the given regions. If the regions are genes,\\nthis would be the distance downstream of the\\ntranscription end site. (default: [0, 0])"
    plot_output: "File name to save the intermediate heatmap. The file\\nending will be used to determine the format of the\\nimage . Available formats are: \\\"png\\\", \\\"eps\\\", \\\"pdf\\\" and\\n\\\"svg\\\" (From deeptools doc) (default: None)"
    config: "Added to the default configuration, overwrites if\\nnecessary. (default: None)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}