version 1.0

task SplashEvalcounts {
  input {
    String? simulated
    String? slam_dun
    File? output_file
  }
  command <<<
    splash eval_counts \
      ~{if defined(simulated) then ("--simulated " +  '"' + simulated + '"') else ""} \
      ~{if defined(slam_dun) then ("--slamdun " +  '"' + slam_dun + '"') else ""} \
      ~{if defined(output_file) then ("--outputFile " +  '"' + output_file + '"') else ""}
  >>>
  parameter_meta {
    simulated: ""
    slam_dun: ""
    output_file: ""
  }
  output {
    File out_stdout = stdout()
    File out_output_file = "${in_output_file}"
  }
}