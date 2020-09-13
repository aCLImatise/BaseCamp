version 1.0

task Cpanm {
  input {
    Boolean? verbose
    Boolean? quiet
    Boolean? interactive
    Boolean? force
    Boolean? not_est
    Boolean? test_only
    Boolean? sudo
    Boolean? install_deps
    Boolean? show_deps
    Boolean? reinstall
    Boolean? mirror
    Boolean? mirror_only
    Boolean? from
    Boolean? prompt
    Boolean? local_lib
    Boolean? local_lib_contained
    Boolean? self_contained
    Boolean? auto_cleanup
    Boolean? self_upgrade
    Boolean? info
    Boolean? look
    Boolean? uninstall
    String module
  }
  command <<<
    cpanm \
      ~{module} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (not_est) then "--notest" else ""} \
      ~{if (test_only) then "--test-only" else ""} \
      ~{if (sudo) then "--sudo" else ""} \
      ~{if (install_deps) then "--installdeps" else ""} \
      ~{if (show_deps) then "--showdeps" else ""} \
      ~{if (reinstall) then "--reinstall" else ""} \
      ~{if (mirror) then "--mirror" else ""} \
      ~{if (mirror_only) then "--mirror-only" else ""} \
      ~{if (from) then "--from" else ""} \
      ~{if (prompt) then "--prompt" else ""} \
      ~{if (local_lib) then "--local-lib" else ""} \
      ~{if (local_lib_contained) then "--local-lib-contained" else ""} \
      ~{if (self_contained) then "--self-contained" else ""} \
      ~{if (auto_cleanup) then "--auto-cleanup" else ""} \
      ~{if (self_upgrade) then "--self-upgrade" else ""} \
      ~{if (info) then "--info" else ""} \
      ~{if (look) then "--look" else ""} \
      ~{if (uninstall) then "--uninstall" else ""}
  >>>
  parameter_meta {
    verbose: "Turns on chatty output"
    quiet: "Turns off the most output"
    interactive: "Turns on interactive configure (required for Task:: modules)"
    force: "force install"
    not_est: "Do not run unit tests"
    test_only: "Run tests only, do not install"
    sudo: "sudo to run install commands"
    install_deps: "Only install dependencies"
    show_deps: "Only display direct dependencies"
    reinstall: "Reinstall the distribution even if you already have the latest version installed"
    mirror: "Specify the base URL for the mirror (e.g. http://cpan.cpantesters.org/)"
    mirror_only: "Use the mirror's index file instead of the CPAN Meta DB"
    from: "Use only this mirror base URL and its index file"
    prompt: "Prompt when configure/build/test fails"
    local_lib: "Specify the install base to install modules"
    local_lib_contained: "Specify the install base to install all non-core modules"
    self_contained: "Install all non-core modules, even if they're already installed."
    auto_cleanup: "Number of days that cpanm's work directories expire in. Defaults to 7"
    self_upgrade: "upgrades itself"
    info: "Displays distribution info on CPAN"
    look: "Opens the distribution with your SHELL"
    uninstall: "Uninstalls the modules (EXPERIMENTAL)"
    module: ""
  }
  output {
    File out_stdout = stdout()
  }
}