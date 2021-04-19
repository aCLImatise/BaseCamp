version 1.0

task ParsecToolshedRepositoriesCreateRepository {
  input {
    String? description
    String? type
    String? remote_repository_url
    String? homepage_url
    String? category_ids
    String name
    String synopsis
  }
  command <<<
    parsec toolshed_repositories create_repository \
      ~{name} \
      ~{synopsis} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(type) then ("--type " +  '"' + type + '"') else ""} \
      ~{if defined(remote_repository_url) then ("--remote_repository_url " +  '"' + remote_repository_url + '"') else ""} \
      ~{if defined(homepage_url) then ("--homepage_url " +  '"' + homepage_url + '"') else ""} \
      ~{if defined(category_ids) then ("--category_ids " +  '"' + category_ids + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/galaxy-parsec:1.15.0--pyh5e36f6f_0"
  }
  parameter_meta {
    description: "Optional description of the repository"
    type: "type of the repository. One of \\\"unrestricted\\\",\\n\\\"repository_suite_definition\\\", or\\n\\\"tool_dependency_definition\\\"  [default:\\nunrestricted]"
    remote_repository_url: "Remote URL (e.g. GitHub/Bitbucket repository)"
    homepage_url: "Upstream's homepage for the project"
    category_ids: "List of encoded category IDs"
    name: ""
    synopsis: ""
  }
  output {
    File out_stdout = stdout()
  }
}