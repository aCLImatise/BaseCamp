version 1.0

task StoatyDivepy {
  input {
    Boolean? _inputbed_peak
    Boolean? bambed__inputbam
    Boolean? _chromosome_length
    File? output_folder
    Float? thresh
    Boolean? peak_correction
    Boolean? max_translocate
    Int? peak_length
    Float? max_norm_value
    Boolean? border_penalty
    Float? scale_max
    Int? max_cl
    Int? num_cl
    Boolean? turn_off_classification
    String profiles_dot
    String on_dot
  }
  command <<<
    StoatyDive_py \
      ~{profiles_dot} \
      ~{on_dot} \
      ~{if (_inputbed_peak) then "-a" else ""} \
      ~{if (bambed__inputbam) then "-b" else ""} \
      ~{if (_chromosome_length) then "-c" else ""} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""} \
      ~{if (peak_correction) then "--peak_correction" else ""} \
      ~{if (max_translocate) then "--max_translocate" else ""} \
      ~{if defined(peak_length) then ("--peak_length " +  '"' + peak_length + '"') else ""} \
      ~{if defined(max_norm_value) then ("--max_norm_value " +  '"' + max_norm_value + '"') else ""} \
      ~{if (border_penalty) then "--border_penalty" else ""} \
      ~{if defined(scale_max) then ("--scale_max " +  '"' + scale_max + '"') else ""} \
      ~{if defined(max_cl) then ("--maxcl " +  '"' + max_cl + '"') else ""} \
      ~{if defined(num_cl) then ("--numcl " +  '"' + num_cl + '"') else ""} \
      ~{if (turn_off_classification) then "--turn_off_classification" else ""}
  >>>
  parameter_meta {
    _inputbed_peak: "*.bed, --input_bed *.bed\\nPath to the peak file in bed6 format."
    bambed__inputbam: "*.bam/*.bed, --input_bam *.bam/*.bed\\nPath to the read file used for the peak calling in bed\\nor bam format."
    _chromosome_length: "*.txt, --chr_file *.txt\\nPath to the chromosome length file."
    output_folder: "Write results to this path. [Default: Operating Path]"
    thresh: "Set a normalized CV threshold to divide the peak\\nprofiles into more specific (0) and more unspecific\\n(1). [Default: 1.0]"
    peak_correction: "Activate peak correction. The peaks are recentered\\n(shifted) for the correct sumit."
    max_translocate: "Set this flag if you want to shift the peak profiles\\nbased on the maximum value inside the profile instead\\nof a Gaussian blur translocation."
    peak_length: "Set maximum peak length for the constant peak length."
    max_norm_value: "Provide a maximum value for CV to make the normalized\\nCV plot more comparable."
    border_penalty: "Adds a penalty for non-centered peaks."
    scale_max: "Provide a maximum value for the CV plot."
    max_cl: "Maximal number of clusters of the kmeans clustering of\\nthe peak profiles. The algorithm will be optimized,\\ni.e., the parameter is just a constraint and not\\nabsolute. [Default: 15]"
    num_cl: "You can forcefully set the number of cluster of peak"
    turn_off_classification: "Turn off the peak profile classification.\\n"
    profiles_dot: "--sm                  Turn on the peak profile smoothing for the peak"
    on_dot: "--lam float           Parameter for the peak profile classification. Set"
  }
  output {
    File out_stdout = stdout()
  }
}