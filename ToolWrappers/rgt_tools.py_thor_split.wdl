version 1.0

task RgttoolspyThorSplit {
  input {
    File? input_bed_file
    Directory? output_directory
    Int? define_cutoff_pvalue
    String? fc
    Boolean? rename
    String? define_the_genome
    String? define_maximum_distance
    Int? define_bin_size
    Int? define_step_size
    String? dnc
    String? snc
  }
  command <<<
    rgt_tools_py thor_split \
      ~{if defined(input_bed_file) then ("-i " +  '"' + input_bed_file + '"') else ""} \
      ~{if defined(output_directory) then ("-o " +  '"' + output_directory + '"') else ""} \
      ~{if defined(define_cutoff_pvalue) then ("-p " +  '"' + define_cutoff_pvalue + '"') else ""} \
      ~{if defined(fc) then ("-fc " +  '"' + fc + '"') else ""} \
      ~{if (rename) then "--rename" else ""} \
      ~{if defined(define_the_genome) then ("-g " +  '"' + define_the_genome + '"') else ""} \
      ~{if defined(define_maximum_distance) then ("-m " +  '"' + define_maximum_distance + '"') else ""} \
      ~{if defined(define_bin_size) then ("-b " +  '"' + define_bin_size + '"') else ""} \
      ~{if defined(define_step_size) then ("-s " +  '"' + define_step_size + '"') else ""} \
      ~{if defined(dnc) then ("-dnc " +  '"' + dnc + '"') else ""} \
      ~{if defined(snc) then ("-snc " +  '"' + snc + '"') else ""}
  >>>
  parameter_meta {
    input_bed_file: "Input BED file"
    output_directory: "Output directory."
    define_cutoff_pvalue: "Define the cut-off of p-value (-log10) for filtering."
    fc: "Define the cut-off of foldchange for filtering."
    rename: "Rename the peak names by associated genes."
    define_the_genome: "Define the genome"
    define_maximum_distance: "Define the maximum distance for merging the nearby regions"
    define_bin_size: "Define the bin size"
    define_step_size: "Define the step size"
    dnc: "Define the cutoff of the difference of norm. read counts"
    snc: "Define the cutoff of the sum of norm. read counts"
  }
  output {
    File out_stdout = stdout()
    Directory out_output_directory = "${in_output_directory}"
  }
}