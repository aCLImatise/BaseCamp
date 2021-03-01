version 1.0

task PlanemoMulledInit {
  input {
    Float? mulled_cond_a_version
    String? mulled_namespace
    String? mulled_command
  }
  command <<<
    planemo mulled_init \
      ~{if defined(mulled_cond_a_version) then ("--mulled_conda_version " +  '"' + mulled_cond_a_version + '"') else ""} \
      ~{if defined(mulled_namespace) then ("--mulled_namespace " +  '"' + mulled_namespace + '"') else ""} \
      ~{if defined(mulled_command) then ("--mulled_command " +  '"' + mulled_command + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mulled_cond_a_version: "Install a specific version of Conda before\\nrunning the command, by default the version\\nthat comes with the continuumio miniconda3\\nimage will be used under Linux and under Mac OS\\nX Conda will be upgraded to to work around a\\nbug in 4.2."
    mulled_namespace: "Build a mulled image with the specified\\nnamespace - defaults to biocontainers. Galaxy\\ncurrently only recognizes images with the\\nnamespace biocontainers."
    mulled_command: "Mulled action to perform for targets - this\\ndefaults to 'build-and-test'."
  }
  output {
    File out_stdout = stdout()
  }
}