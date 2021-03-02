version 1.0

task AkitaDataReadpy {
  input {
    String? set_blacklist_nucleotides
    String? clip
    Int? crop
    Int? positions_diagonal_ignore
    Int? gaussian_kernel_stddev
    Int? average_pooling_width
    Boolean? as_obs_exp
    Boolean? global_obs_exp
    Boolean? no_log
    String genome_hic_file
    String seqs_bed_file
    String seqs_hic_file
  }
  command <<<
    akita_data_read_py \
      ~{genome_hic_file} \
      ~{seqs_bed_file} \
      ~{seqs_hic_file} \
      ~{if defined(set_blacklist_nucleotides) then ("-b " +  '"' + set_blacklist_nucleotides + '"') else ""} \
      ~{if defined(clip) then ("--clip " +  '"' + clip + '"') else ""} \
      ~{if defined(crop) then ("--crop " +  '"' + crop + '"') else ""} \
      ~{if defined(positions_diagonal_ignore) then ("-d " +  '"' + positions_diagonal_ignore + '"') else ""} \
      ~{if defined(gaussian_kernel_stddev) then ("-k " +  '"' + gaussian_kernel_stddev + '"') else ""} \
      ~{if defined(average_pooling_width) then ("-w " +  '"' + average_pooling_width + '"') else ""} \
      ~{if (as_obs_exp) then "--as_obsexp" else ""} \
      ~{if (global_obs_exp) then "--global_obsexp" else ""} \
      ~{if (no_log) then "--no_log" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/basenji:0.5--py_0"
  }
  parameter_meta {
    set_blacklist_nucleotides: "Set blacklist nucleotides to a baseline value."
    clip: "Clip values post-summary to a maximum [Default: none]"
    crop: "Crop bp off each end [Default: 0]"
    positions_diagonal_ignore: "Positions on the diagonal to ignore [Default: 2]"
    gaussian_kernel_stddev: "Gaussian kernel stddev to smooth values [Default: 0]"
    average_pooling_width: "Average pooling width [Default: 1]"
    as_obs_exp: "save targets as obsexp profiles"
    global_obs_exp: "use global obs/exp"
    no_log: "no not take log for obs/exp"
    genome_hic_file: ""
    seqs_bed_file: ""
    seqs_hic_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}