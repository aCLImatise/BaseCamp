version 1.0

task PlanemoMulledInit {
  input {
    String? mulled_cond_a_version
    String? mulled_namespace
    String? mulled_command
  }
  command <<<
    planemo mulled_init \
      ~{if defined(mulled_cond_a_version) then ("--mulled_conda_version " +  '"' + mulled_cond_a_version + '"') else ""} \
      ~{if defined(mulled_namespace) then ("--mulled_namespace " +  '"' + mulled_namespace + '"') else ""} \
      ~{if defined(mulled_command) then ("--mulled_command " +  '"' + mulled_command + '"') else ""}
  >>>
  parameter_meta {
    mulled_cond_a_version: "Install a specific version of Conda before running the command, by default the version that comes with the continuumio miniconda3 image will be used under Linux and under Mac OS X Conda will be upgraded to to work around a bug in 4.2."
    mulled_namespace: "Build a mulled image with the specified namespace - defaults to biocontainers. Galaxy currently only recognizes images with the namespace biocontainers."
    mulled_command: "Mulled action to perform for targets - this defaults to 'build-and-test'."
  }
}