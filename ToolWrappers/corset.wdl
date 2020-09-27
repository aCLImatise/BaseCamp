version 1.0

task Corset {
  input {
    Float? comma_separated_list
    Int? value_used_thresholding
    Boolean? switches_log_test
    Int? filter_transcripts_fewer
    File? specifies_grouping_ie
    String? prefix_output_filenames
    String? specifies_files_overwritten
    File? specifies_sample_names
    File? output_file_summarising
    File? input_file_type
    Int? running_i_will
    Int? running_i_option
    String input_bam_files
  }
  command <<<
    corset \
      ~{input_bam_files} \
      ~{if defined(comma_separated_list) then ("-d " +  '"' + comma_separated_list + '"') else ""} \
      ~{if defined(value_used_thresholding) then ("-D " +  '"' + value_used_thresholding + '"') else ""} \
      ~{if (switches_log_test) then "-I" else ""} \
      ~{if defined(filter_transcripts_fewer) then ("-m " +  '"' + filter_transcripts_fewer + '"') else ""} \
      ~{if defined(specifies_grouping_ie) then ("-g " +  '"' + specifies_grouping_ie + '"') else ""} \
      ~{if defined(prefix_output_filenames) then ("-p " +  '"' + prefix_output_filenames + '"') else ""} \
      ~{if defined(specifies_files_overwritten) then ("-f " +  '"' + specifies_files_overwritten + '"') else ""} \
      ~{if defined(specifies_sample_names) then ("-n " +  '"' + specifies_sample_names + '"') else ""} \
      ~{if defined(output_file_summarising) then ("-r " +  '"' + output_file_summarising + '"') else ""} \
      ~{if defined(input_file_type) then ("-i " +  '"' + input_file_type + '"') else ""} \
      ~{if defined(running_i_will) then ("-l " +  '"' + running_i_will + '"') else ""} \
      ~{if defined(running_i_option) then ("-x " +  '"' + running_i_option + '"') else ""}
  >>>
  parameter_meta {
    comma_separated_list: "A comma separated list of distance thresholds. The range must be\\nbetween 0 and 1. e.g -d 0.4,0.5. If more than one distance threshold\\nis supplied, the output filenames will be of the form:\\ncounts-<threshold>.txt and clusters-<threshold>.txt\\nDefault: 0.3"
    value_used_thresholding: "The value used for thresholding the log likelihood ratio. The default\\nvalue will depend on the number of degrees of freedom (which is the\\nnumber of groups -1). By default D = 17.5 + 2.5 * ndf, which corresponds\\napproximately to a p-value threshold of 10^-5, when there are fewer than\\n10 groups."
    switches_log_test: "Switches off the log likelihood ratio test and should be used\\nfor downstream differential transcript usage analysis. It will prevent\\ndifferentially expressed transcript being split into different clusters.\\nThis option is the equivalent of setting -D to a very large number.\\nDefault: log likelihood ratio test on"
    filter_transcripts_fewer: "Filter out any transcripts with fewer than this many reads aligning.\\nDefault: 10"
    specifies_grouping_ie: "Specifies the grouping. i.e. which samples belong to which experimental\\ngroups. The parameter must be a comma separated list (no spaces), with the\\ngroupings given in the same order as the bam filename. For example:\\n-g Group1,Group1,Group2,Group2 etc. If this option is not used, each sample\\nis treated as an independent experimental group."
    prefix_output_filenames: "Prefix for the output filenames. The output files will be of the form\\n<prefix>-counts.txt and <prefix>-clusters.txt. Default filenames are:\\ncounts.txt and clusters.txt"
    specifies_files_overwritten: "Specifies whether the output files should be overwritten if they already exist.\\nDefault: false"
    specifies_sample_names: "Specifies the sample names to be used in the header of the output count file.\\nThis should be a comma separated list without spaces.\\ne.g. -n Group1-ReplicateA,Group1-ReplicateB,Group2-ReplicateA etc.\\nDefault: the input filenames will be used."
    output_file_summarising: "Output a file summarising the read alignments. This may be used if you\\nwould like to read the bam files and run the clustering in seperate runs\\nof corset. e.g. to read input bam files in parallel. The output will be the\\nbam filename appended with .corset-reads.\\nDefault: false"
    input_file_type: "The input file type. Use -i corset, if you previously ran\\ncorset with the -r option and would like to restart using those\\nread summary files. Use salmon_eq_classes, if you aligned with salmon with\\nthe flag --dumpEq and are passing corset the equivalent class files.\\nRunning with either -i corset or salmon_eq_classes will switch off the -r option.\\nDefault: bam"
    running_i_will: "If running with -i corset or salmon_eq_classes, this will filter out a link between contigs\\nif the link is supported by less than this many reads (performed sample-wise). Reads will\\nbe reassigned uniformly to the contigs in the equivalence class. This option will\\nimprove runtime and memory usage, but will increase the number of clusters reported.\\nDefault: 1 (no filtering)"
    running_i_option: "If running with -i corset or salmon_eq_classes, this option will filter out reads that\\nalign to more than x contigs. Default: no filtering"
    input_bam_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}