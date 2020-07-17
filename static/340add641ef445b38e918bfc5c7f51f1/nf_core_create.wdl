version 1.0

task NfCoreCreate {
  input {
    String? name
    String? description
    String? author
    String? new_version
    Boolean? no_git
    Boolean? force
    String? outdir
  }
  command <<<
    nf-core create \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(new_version) then ("--new-version " +  '"' + new_version + '"') else ""} \
      ~{true="--no-git" false="" no_git} \
      ~{true="--force" false="" force} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  parameter_meta {
    name: "The name of your new pipeline  [required]"
    description: "A short description of your pipeline  [required]"
    author: "Name of the main author(s)  [required]"
    new_version: "The initial version number to use"
    no_git: "Do not initialise pipeline as new git repository"
    force: "Overwrite output directory if it already exists"
    outdir: "Output directory for new pipeline (default: pipeline name)"
  }
}