version 1.0

task ParsecToolshedRepositoriesUpdateRepository {
  input {
    String? commit_message
    String tar_ball_path
    Float zero_dot_five_dot_two
  }
  command <<<
    parsec toolshed_repositories update_repository \
      ~{tar_ball_path} \
      ~{zero_dot_five_dot_two} \
      ~{if defined(commit_message) then ("--commit_message " +  '"' + commit_message + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    commit_message: "Commit message used for the underlying Mercurial\\nrepository backing Tool Shed repository."
    tar_ball_path: "Update the contents of a Tool Shed repository with specified tar ball."
    zero_dot_five_dot_two: "Options:"
  }
  output {
    File out_stdout = stdout()
  }
}