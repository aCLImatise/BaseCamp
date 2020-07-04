version 1.0

task SambambaIndex {
  input {
    String? n_threads
    Boolean? show_progress
    Boolean? check_bins
    Boolean? cram_input
    String samba_mba_index
    String input_dot_bam_vertical_line_input_dot_cram
    String? output_file
  }
  command <<<
    sambamba index \
      ~{samba_mba_index} \
      ~{input_dot_bam_vertical_line_input_dot_cram} \
      ~{output_file} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{true="--show-progress" false="" show_progress} \
      ~{true="--check-bins" false="" check_bins} \
      ~{true="--cram-input" false="" cram_input}
  >>>
  parameter_meta {
    n_threads: "number of threads to use for decompression"
    show_progress: "show progress bar in STDERR"
    check_bins: "check that bins are set correctly"
    cram_input: "specify that input is in CRAM format"
    samba_mba_index: ""
    input_dot_bam_vertical_line_input_dot_cram: ""
    output_file: ""
  }
}