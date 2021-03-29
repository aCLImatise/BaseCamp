version 1.0

task NfcoreModulesCreate {
  input {
    String? tool
    String? author
    String? label
    Boolean? use_groovy_map
    Boolean? no_meta
    Boolean? force
    Directory directory
  }
  command <<<
    nf_core modules create \
      ~{directory} \
      ~{if defined(tool) then ("--tool " +  '"' + tool + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(label) then ("--label " +  '"' + label + '"') else ""} \
      ~{if (use_groovy_map) then "--meta" else ""} \
      ~{if (no_meta) then "--no-meta" else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    tool: "or <tool/subtool>"
    author: "Module author's GitHub username"
    label: "Standard resource label for process"
    use_groovy_map: "Use Groovy meta map for sample information"
    no_meta: "Don't use meta map for sample information"
    force: "Overwrite any files if they already exist"
    directory: ""
  }
  output {
    File out_stdout = stdout()
  }
}