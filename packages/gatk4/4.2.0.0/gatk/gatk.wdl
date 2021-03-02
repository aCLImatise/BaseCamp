version 1.0

task Gatk {
  input {
    Boolean? g_atk_config_file
    String? spark_runner
    Boolean? dry_run
    Boolean? java_options
    Int? debug_port
    Boolean? debug_suspend
  }
  command <<<
    gatk \
      ~{if (g_atk_config_file) then "--gatk-config-file" else ""} \
      ~{if defined(spark_runner) then ("--spark-runner " +  '"' + spark_runner + '"') else ""} \
      ~{if (dry_run) then "--dry-run" else ""} \
      ~{if (java_options) then "--java-options" else ""} \
      ~{if defined(debug_port) then ("--debug-port " +  '"' + debug_port + '"') else ""} \
      ~{if (debug_suspend) then "--debug-suspend" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/gatk4:4.2.0.0--0"
  }
  parameter_meta {
    g_atk_config_file: "PATH/TO/GATK/PROPERTIES/FILE"
    spark_runner: "controls how spark tools are run\\nvalid targets are:\\nLOCAL:      run using the in-memory spark runner\\nSPARK:      run using spark-submit on an existing cluster\\n--spark-master must be specified\\n--spark-submit-command may be specified to control the Spark submit command\\narguments to spark-submit may optionally be specified after --\\nGCS:        run using Google cloud dataproc\\ncommands after the -- will be passed to dataproc\\n--cluster <your-cluster> must be specified after the --\\nspark properties and some common spark-submit parameters will be translated\\nto dataproc equivalents"
    dry_run: "may be specified to output the generated command line without running it"
    java_options: "'OPTION1[ OPTION2=Y ... ]'   optional - pass the given string of options to the\\njava JVM at runtime.\\nJava options MUST be passed inside a single string with space-separated values."
    debug_port: "sets up a Java VM debug agent to listen to debugger connections on a\\nparticular port number. This in turn will add the necessary java VM arguments\\nso that you don't need to explicitly indicate these using --java-options."
    debug_suspend: "sets the Java VM debug agent up so that the run get immediatelly suspended\\nwaiting for a debugger to connect. By default the port number is 5005 but\\ncan be customized using --debug-port\\n"
  }
  output {
    File out_stdout = stdout()
  }
}