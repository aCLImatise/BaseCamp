version 1.0

task MetawrapBinRefinement {
  input {
    Directory? output_directory
    Int? number_threads_default
    Int? memory_available_default
    Int? minimum_completion_default
    Int? maximum_contamination_is
    Directory? folder_metagenomic_bins_files
    Directory? b
    Directory? var_7
    Boolean? skip_refinement
    Boolean? skip_check_m
    Boolean? skip_consolidation
    Boolean? keep_ambiguous
    Boolean? remove_ambiguous
    Boolean? quick
  }
  command <<<
    metawrap bin_refinement \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(number_threads_default) then ("-t " +  '"' + number_threads_default + '"') else ""} \
      ~{if defined(memory_available_default) then ("-m " +  '"' + memory_available_default + '"') else ""} \
      ~{if defined(minimum_completion_default) then ("-c " +  '"' + minimum_completion_default + '"') else ""} \
      ~{if defined(maximum_contamination_is) then ("-x " +  '"' + maximum_contamination_is + '"') else ""} \
      ~{if defined(folder_metagenomic_bins_files) then ("-A " +  '"' + folder_metagenomic_bins_files + '"') else ""} \
      ~{if defined(b) then ("-B " +  '"' + b + '"') else ""} \
      ~{if defined(var_7) then ("-C " +  '"' + var_7 + '"') else ""} \
      ~{if (skip_refinement) then "--skip-refinement" else ""} \
      ~{if (skip_check_m) then "--skip-checkm" else ""} \
      ~{if (skip_consolidation) then "--skip-consolidation" else ""} \
      ~{if (keep_ambiguous) then "--keep-ambiguous" else ""} \
      ~{if (remove_ambiguous) then "--remove-ambiguous" else ""} \
      ~{if (quick) then "--quick" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    output_directory: "output directory"
    number_threads_default: "number of threads (default=1)"
    memory_available_default: "memory available (default=40)"
    minimum_completion_default: "minimum % completion of bins [should be >50%] (default=70)"
    maximum_contamination_is: "maximum % contamination of bins that is acceptable (default=10)"
    folder_metagenomic_bins_files: "folder with metagenomic bins (files must have .fa or .fasta extension)"
    b: "another folder with metagenomic bins"
    var_7: "another folder with metagenomic bins"
    skip_refinement: "dont use binning_refiner to come up with refined bins based on combinations of binner outputs"
    skip_check_m: "dont run CheckM to assess bins"
    skip_consolidation: "choose the best version of each bin from all bin refinement iteration"
    keep_ambiguous: "for contigs that end up in more than one bin, keep them in all bins (default: keeps them only in the best bin)"
    remove_ambiguous: "for contigs that end up in more than one bin, remove them in all bins (default: keeps them only in the best bin)"
    quick: "adds --reduced_tree option to checkm, reducing runtime, especially with low memory"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}