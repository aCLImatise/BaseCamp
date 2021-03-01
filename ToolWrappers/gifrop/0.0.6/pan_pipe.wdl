version 1.0

task PanPipe {
  input {
    Boolean? threads
    Boolean? roar_y_args
    Boolean? pro_kk_a_args
    Boolean? gif_rop_args
  }
  command <<<
    pan_pipe \
      ~{if (threads) then "--threads" else ""} \
      ~{if (roar_y_args) then "--roary_args" else ""} \
      ~{if (pro_kk_a_args) then "--prokka_args" else ""} \
      ~{if (gif_rop_args) then "--gifrop_args" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gifrop:0.0.6--0"
  }
  parameter_meta {
    threads: "Number of threads to use for parallel commands. Will be overridden by values in *_args options"
    roar_y_args: "a quoted string of arguments to pass to roary, e.g.: '-p 8 -s -e --mafft'"
    pro_kk_a_args: "a quoted string of arguments to pass to prokka, e.g: '--rawproduct --proteins prots.gbk'"
    gif_rop_args: "a quoted string of arguments to pass to gifrop, e.g: '--no_plots -m 7'"
  }
  output {
    File out_stdout = stdout()
  }
}