version 1.0

task HicMergeDomains {
  input {
    Array[String] domain_files
    File? protein_file
    Int? minimum_number_of_peaks
    String? value
    Float? percent
    File? output_merged_list
    File? output_relation_list
    File? output_tree_plot_prefix
    File? output_tree_plot_format
  }
  command <<<
    hicMergeDomains \
      ~{if defined(domain_files) then ("--domainFiles " +  '"' + domain_files + '"') else ""} \
      ~{if defined(protein_file) then ("--proteinFile " +  '"' + protein_file + '"') else ""} \
      ~{if defined(minimum_number_of_peaks) then ("--minimumNumberOfPeaks " +  '"' + minimum_number_of_peaks + '"') else ""} \
      ~{if defined(value) then ("--value " +  '"' + value + '"') else ""} \
      ~{if defined(percent) then ("--percent " +  '"' + percent + '"') else ""} \
      ~{if defined(output_merged_list) then ("--outputMergedList " +  '"' + output_merged_list + '"') else ""} \
      ~{if defined(output_relation_list) then ("--outputRelationList " +  '"' + output_relation_list + '"') else ""} \
      ~{if defined(output_tree_plot_prefix) then ("--outputTreePlotPrefix " +  '"' + output_tree_plot_prefix + '"') else ""} \
      ~{if defined(output_tree_plot_format) then ("--outputTreePlotFormat " +  '"' + output_tree_plot_format + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    domain_files: "The domain files of the different resolutions is\\nrequired"
    protein_file: "In order to be able to better assess the relationship\\nbetween TADs, the associated protein file (e.g. CTCF\\nfor mammals) can be included. The protein file is\\nrequired in broadpeak format"
    minimum_number_of_peaks: "Optional parameter to adjust the number of protein\\npeaks when adapting the resolution to the domain\\nfiles. At least minimumNumberOfPeaks of unique peaks\\nmust be in a bin to considered. Otherwise the bin is\\ntreated like it has no peaks."
    value: "Determine a value by how much the boundaries of two\\nTADs must at least differ to consider them as two\\nseparate TADs."
    percent: "For the relationship determination, a percentage is\\nrequired from which area coverage the TADs are related\\nto each other.For example, a relationship should be\\nentered from 5 percent area coverage -p 0.05"
    output_merged_list: "File name for the merged domains list"
    output_relation_list: "File name for the relationship list of the TADs."
    output_tree_plot_prefix: "File name prefix for the relationship tree of the TADs"
    output_tree_plot_format: "File format of the relationship tree. Supported\\nformats are listed on:\\nhttps://www.graphviz.org/doc/info/output.html\\n"
  }
  output {
    File out_stdout = stdout()
    File out_output_tree_plot_format = "${in_output_tree_plot_format}"
  }
}