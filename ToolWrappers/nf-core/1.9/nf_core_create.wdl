version 1.0

task NfcoreCreate {
  input {
    String? name
    String? description
    String? author
    Int? new_version
    Boolean? no_git
    Directory? force
    Directory? outdir
  }
  command <<<
    nf_core create \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if defined(new_version) then ("--new-version " +  '"' + new_version + '"') else ""} \
      ~{if (no_git) then "--no-git" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    name: "The name of your new pipeline  [required]"
    description: "A short description of your pipeline  [required]"
    author: "Name of the main author(s)  [required]"
    new_version: "The initial version number to use"
    no_git: "Do not initialise pipeline as new git repository"
    force: "Overwrite output directory if it already exists"
    outdir: "Output directory for new pipeline (default: pipeline\\nname)"
  }
  output {
    File out_stdout = stdout()
    Directory out_force = "${in_force}"
    Directory out_outdir = "${in_outdir}"
  }
}