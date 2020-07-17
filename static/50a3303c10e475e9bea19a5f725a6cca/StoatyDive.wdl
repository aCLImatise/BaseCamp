version 1.0

task StoatyDive.py {
  input {
    Boolean? _inputbed_path
    Boolean? _inputbam_bambed
    Boolean? _chrfile_path
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
    Boolean? sm
    Float? lam
    Boolean? turn_off_classification
  }
  command <<<
    StoatyDive.py \
      ~{true="-a" false="" _inputbed_path} \
      ~{true="-b" false="" _inputbam_bambed} \
      ~{true="-c" false="" _chrfile_path} \
      ~{if defined(output_folder) then ("--output_folder " +  '"' + output_folder + '"') else ""} \
      ~{if defined(thresh) then ("--thresh " +  '"' + thresh + '"') else ""} \
      ~{true="--peak_correction" false="" peak_correction} \
      ~{true="--max_translocate" false="" max_translocate} \
      ~{if defined(peak_length) then ("--peak_length " +  '"' + peak_length + '"') else ""} \
      ~{if defined(max_norm_value) then ("--max_norm_value " +  '"' + max_norm_value + '"') else ""} \
      ~{true="--border_penalty" false="" border_penalty} \
      ~{if defined(scale_max) then ("--scale_max " +  '"' + scale_max + '"') else ""} \
      ~{if defined(max_cl) then ("--maxcl " +  '"' + max_cl + '"') else ""} \
      ~{if defined(num_cl) then ("--numcl " +  '"' + num_cl + '"') else ""} \
      ~{true="--sm" false="" sm} \
      ~{if defined(lam) then ("--lam " +  '"' + lam + '"') else ""} \
      ~{true="--turn_off_classification" false="" turn_off_classification}
  >>>
  parameter_meta {
    _inputbed_path: "*.bed, --input_bed *.bed Path to the peak file in bed6 format."
    _inputbam_bambed: "*.bam/*.bed, --input_bam *.bam/*.bed Path to the read file used for the peak calling in bed or bam format."
    _chrfile_path: "*.txt, --chr_file *.txt Path to the chromosome length file."
    output_folder: "Write results to this path. [Default: Operating Path]"
    thresh: "Set a normalized CV threshold to divide the peak profiles into more specific (0) and more unspecific (1). [Default: 1.0]"
    peak_correction: "Activate peak correction. The peaks are recentered (shifted) for the correct sumit."
    max_translocate: "Set this flag if you want to shift the peak profiles based on the maximum value inside the profile instead of a Gaussian blur translocation."
    peak_length: "Set maximum peak length for the constant peak length."
    max_norm_value: "Provide a maximum value for CV to make the normalized CV plot more comparable."
    border_penalty: "Adds a penalty for non-centered peaks."
    scale_max: "Provide a maximum value for the CV plot."
    max_cl: "Maximal number of clusters of the kmeans clustering of the peak profiles. The algorithm will be optimized, i.e., the parameter is just a constraint and not absolute. [Default: 15]"
    num_cl: "You can forcefully set the number of cluster of peak profiles."
    sm: "Turn on the peak profile smoothing for the peak profile classification. It is recommended to turn it on."
    lam: "Parameter for the peak profile classification. Set lambda for the smoothing of the peak profiles. A higher value (> default) will underfit. A lower value (< default) will overfit. [Default: 0.3]"
    turn_off_classification: "Turn off the peak profile classification."
  }
}