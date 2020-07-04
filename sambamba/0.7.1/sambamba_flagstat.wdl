version 1.0

task SambambaFlagstat {
  input {
    String? n_threads
    Boolean? show_progress
    String samba_mba_flag_stat
    String input_dot_bam
  }
  command <<<
    sambamba flagstat \
      ~{samba_mba_flag_stat} \
      ~{input_dot_bam} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{true="--show-progress" false="" show_progress}
  >>>
  parameter_meta {
    n_threads: "use NTHREADS for decompression"
    show_progress: "show progressbar in STDERR"
    samba_mba_flag_stat: ""
    input_dot_bam: ""
  }
}