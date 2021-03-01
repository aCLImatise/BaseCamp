version 1.0

task SambambaIndex {
  input {
    Int? n_threads
    Boolean? show_progress
    Boolean? check_bins
    Boolean? fast_a_input
    String samba_mba_index
    String input_dot_bam_vertical_line_input_dot_fast_a
    String? output_file
  }
  command <<<
    sambamba index \
      ~{samba_mba_index} \
      ~{input_dot_bam_vertical_line_input_dot_fast_a} \
      ~{output_file} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if (check_bins) then "--check-bins" else ""} \
      ~{if (fast_a_input) then "--fasta-input" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    n_threads: "number of threads to use for decompression"
    show_progress: "show progress bar in STDERR"
    check_bins: "check that bins are set correctly"
    fast_a_input: "specify that input is in FASTA format\\n"
    samba_mba_index: ""
    input_dot_bam_vertical_line_input_dot_fast_a: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
  }
}