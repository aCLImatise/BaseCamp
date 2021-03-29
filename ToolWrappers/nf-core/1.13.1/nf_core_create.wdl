version 1.0

task NfcoreCreate {
  input {
    String? name
    String? description
    String? author
    Boolean? no_git
    Directory? force
    Directory? outdir
  }
  command <<<
    nf_core create \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(description) then ("--description " +  '"' + description + '"') else ""} \
      ~{if defined(author) then ("--author " +  '"' + author + '"') else ""} \
      ~{if (no_git) then "--no-git" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(outdir) then ("--outdir " +  '"' + outdir + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0"
  }
  parameter_meta {
    name: "The name of your new pipeline  [required]"
    description: "A short description of your pipeline  [required]"
    author: "Name of the main author(s)  [required]"
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