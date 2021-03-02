version 1.0

task SambambaFlagstat {
  input {
    String? n_threads
    Boolean? show_progress
    Boolean? tabular
    String samba_mba_flag_stat
    String input_dot_bam
  }
  command <<<
    sambamba flagstat \
      ~{samba_mba_flag_stat} \
      ~{input_dot_bam} \
      ~{if defined(n_threads) then ("--nthreads " +  '"' + n_threads + '"') else ""} \
      ~{if (show_progress) then "--show-progress" else ""} \
      ~{if (tabular) then "--tabular" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/sambamba:0.8.0--h984e79f_0"
  }
  parameter_meta {
    n_threads: "use NTHREADS for decompression"
    show_progress: "show progressbar in STDERR"
    tabular: "output in csv format\\n"
    samba_mba_flag_stat: ""
    input_dot_bam: ""
  }
  output {
    File out_stdout = stdout()
  }
}