version 1.0

task MatOptimize {
  input {
    Boolean? arg_input_mutationannotated
    File? arg_output_optimized
    Boolean? arg_radius_restrict
    Boolean? arg_periodically_save
    Boolean? arg_number_use
    String moves_dot
  }
  command <<<
    matOptimize \
      ~{moves_dot} \
      ~{if (arg_input_mutationannotated) then "-i" else ""} \
      ~{if (arg_output_optimized) then "-o" else ""} \
      ~{if (arg_radius_restrict) then "-r" else ""} \
      ~{if (arg_periodically_save) then "-S" else ""} \
      ~{if (arg_number_use) then "-T" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/usher:0.2.0--hfcd16c1_0"
  }
  parameter_meta {
    arg_input_mutationannotated: "[ --input-mat ] arg                Input mutation-annotated tree file to\\noptimize [REQUIRED]."
    arg_output_optimized: "[ --output-mat ] arg               Output optimized mutation-annotated\\ntree file [REQUIRED]."
    arg_radius_restrict: "[ --radius ] arg (=10)             Radius in which to restrict the SPR"
    arg_periodically_save: "[ --save-every-seconds ] arg (=300)\\nPeriodically save the optimized tree\\nafter every specified number of seconds\\nhave elapsed since the last save."
    arg_number_use: "[ --threads ] arg (=2)             Number of threads to use when possible\\n[DEFAULT uses all available cores, 2\\ndetected on this machine]"
    moves_dot: "-s [ --optimization-seconds ] arg (=3600)"
  }
  output {
    File out_stdout = stdout()
    File out_arg_output_optimized = "${in_arg_output_optimized}"
  }
}