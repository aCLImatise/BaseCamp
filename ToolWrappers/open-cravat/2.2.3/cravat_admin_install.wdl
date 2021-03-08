version 1.0

task CravatadminInstall {
  input {
    Boolean? force
    Boolean? yes
    Boolean? skip_dependencies
    Boolean? private
    Boolean? skip_data
    Boolean? d
    String? v
    String modules
    String installed
  }
  command <<<
    cravat_admin install \
      ~{modules} \
      ~{installed} \
      ~{if (force) then "--force" else ""} \
      ~{if (yes) then "--yes" else ""} \
      ~{if (skip_dependencies) then "--skip-dependencies" else ""} \
      ~{if (private) then "--private" else ""} \
      ~{if (skip_data) then "--skip-data" else ""} \
      ~{if (d) then "-d" else ""} \
      ~{if defined(v) then ("-v " +  '"' + v + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0"
  }
  parameter_meta {
    force: "Install module even if latest version is already"
    yes: "Proceed without prompt"
    skip_dependencies: "Skip installing dependencies"
    private: "Install a private module"
    skip_data: "Skip installing data"
    d: ""
    v: ""
    modules: "Modules to install. May be regular expressions."
    installed: "-d, --force-data      Download data even if latest data is already installed"
  }
  output {
    File out_stdout = stdout()
  }
}