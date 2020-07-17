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
      ~{true="--verbose" false="" verbose} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--interactive" false="" interactive} \
      ~{true="--force" false="" force} \
      ~{true="--notest" false="" not_est} \
      ~{true="--test-only" false="" test_only} \
      ~{true="--sudo" false="" sudo} \
      ~{true="--installdeps" false="" install_deps} \
      ~{true="--showdeps" false="" show_deps} \
      ~{true="--reinstall" false="" reinstall} \
      ~{true="--mirror" false="" mirror} \
      ~{true="--mirror-only" false="" mirror_only} \
      ~{true="--from" false="" from} \
      ~{true="--prompt" false="" prompt} \
      ~{true="--local-lib" false="" local_lib} \
      ~{true="--local-lib-contained" false="" local_lib_contained} \
      ~{true="--self-contained" false="" self_contained} \
      ~{true="--auto-cleanup" false="" auto_cleanup} \
      ~{true="--self-upgrade" false="" self_upgrade} \
      ~{true="--info" false="" info} \
      ~{true="--look" false="" look} \
      ~{true="--uninstall" false="" uninstall}
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
}