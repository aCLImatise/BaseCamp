version 1.0

task PanPipe {
  input {
    Boolean? threads
    Boolean? roar_y_args
    Boolean? pro_kk_a_args
    Boolean? gif_rop_args
    String? option
  }
  command <<<
    pan_pipe \
      ~{option} \
      ~{true="--threads" false="" threads} \
      ~{true="--roary_args" false="" roar_y_args} \
      ~{true="--prokka_args" false="" pro_kk_a_args} \
      ~{true="--gifrop_args" false="" gif_rop_args}
  >>>
  parameter_meta {
    threads: "Number of threads to use for parallel commands. Will be overridden by values in *_args options"
    roar_y_args: "a quoted string of arguments to pass to roary, e.g.: '-t 8 -s -e --mafft'"
    pro_kk_a_args: "a quoted string of arguments to pass to prokka, e.g: '--rawproduct --proteins prots.gbk'"
    gif_rop_args: "a quoted string of arguments to pass to gifrop, e.g: '--no_plots -m 7'"
    option: ""
  }
}