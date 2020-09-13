version 1.0

task GemInstall {
  input {
    String? platform
    Boolean? _updatesources_update
    Directory? install_dir
    String? build_root
    Boolean? vendor
    Boolean? no_document
    Boolean? _envshebang_rewrite
    Boolean? _force_force
    String? trust_policy
    Boolean? ignore_dependencies
    Boolean? development
    Boolean? conservative
    Boolean? minimal_deps
    Boolean? file
    File? without
    Boolean? default
    Boolean? explain
    Boolean? local
    Boolean? remote
    Boolean? both
    Int? bulk_threshold
    Boolean? clear_sources
    String? source
    Boolean? _use_proxy
    Boolean? _verbose_set
    Boolean? quiet
    File? config_file
    Boolean? backtrace
    Boolean? debug
    String gems
    String located
    String generate_dot
    String checks
    Int foo_exec_one_eight
    String dependencies
    String gem_name
    String repository_dot
  }
  command <<<
    gem install \
      ~{gems} \
      ~{located} \
      ~{generate_dot} \
      ~{checks} \
      ~{foo_exec_one_eight} \
      ~{dependencies} \
      ~{gem_name} \
      ~{repository_dot} \
      ~{if defined(platform) then ("--platform " +  '"' + platform + '"') else ""} \
      ~{if (_updatesources_update) then "-u" else ""} \
      ~{if defined(install_dir) then ("--install-dir " +  '"' + install_dir + '"') else ""} \
      ~{if defined(build_root) then ("--build-root " +  '"' + build_root + '"') else ""} \
      ~{if (vendor) then "--vendor" else ""} \
      ~{if (no_document) then "--no-document" else ""} \
      ~{if (_envshebang_rewrite) then "-E" else ""} \
      ~{if (_force_force) then "-f" else ""} \
      ~{if defined(trust_policy) then ("--trust-policy " +  '"' + trust_policy + '"') else ""} \
      ~{if (ignore_dependencies) then "--ignore-dependencies" else ""} \
      ~{if (development) then "--development" else ""} \
      ~{if (conservative) then "--conservative" else ""} \
      ~{if (minimal_deps) then "--minimal-deps" else ""} \
      ~{if (file) then "--file" else ""} \
      ~{if defined(without) then ("--without " +  '"' + without + '"') else ""} \
      ~{if (default) then "--default" else ""} \
      ~{if (explain) then "--explain" else ""} \
      ~{if (local) then "--local" else ""} \
      ~{if (remote) then "--remote" else ""} \
      ~{if (both) then "--both" else ""} \
      ~{if defined(bulk_threshold) then ("--bulk-threshold " +  '"' + bulk_threshold + '"') else ""} \
      ~{if (clear_sources) then "--clear-sources" else ""} \
      ~{if defined(source) then ("--source " +  '"' + source + '"') else ""} \
      ~{if (_use_proxy) then "-p" else ""} \
      ~{if (_verbose_set) then "-V" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if defined(config_file) then ("--config-file " +  '"' + config_file + '"') else ""} \
      ~{if (backtrace) then "--backtrace" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    platform: "Specify the platform of gem to install"
    _updatesources_update: ", --[no-]update-sources        Update local source cache"
    install_dir: "Gem repository directory to get installed"
    build_root: "Temporary installation root. Useful for building\\npackages. Do not use this when installing remote gems."
    vendor: "Install gem into the vendor directory.\\nOnly for use by gem repackagers."
    no_document: "Disable documentation generation"
    _envshebang_rewrite: ", --[no-]env-shebang           Rewrite the shebang line on installed\\nscripts to use /usr/bin/env"
    _force_force: ", --[no-]force                 Force gem to install, bypassing dependency"
    trust_policy: "Specify gem trust policy"
    ignore_dependencies: "Do not install any required dependent gems"
    development: "Install additional development"
    conservative: "Don't attempt to upgrade gems already\\nmeeting version requirement"
    minimal_deps: "Don't upgrade any dependencies that already\\nmeet version requirements"
    file: "[FILE]                Read from a gem dependencies API file and\\ninstall the listed gems"
    without: "Omit the named groups (comma separated)\\nwhen installing from a gem dependencies\\nfile"
    default: "Add the gem's full specification to\\nspecifications/default and extract only its bin"
    explain: "Rather than install the gems, indicate which would\\nbe installed"
    local: "Restrict operations to the LOCAL domain"
    remote: "Restrict operations to the REMOTE domain"
    both: "Allow LOCAL and REMOTE operations"
    bulk_threshold: "Threshold for switching to bulk\\nsynchronization (default 1000)"
    clear_sources: "Clear the gem sources"
    source: "Append URL to list of remote gem sources"
    _use_proxy: ", --[no-]http-proxy [URL]      Use HTTP proxy for remote operations"
    _verbose_set: ", --[no-]verbose               Set the verbose level of output"
    quiet: "Silence commands"
    config_file: "Use this config file instead of default"
    backtrace: "Show stack backtrace on errors"
    debug: "Turn on Ruby debugging"
    gems: "-n, --bindir DIR                 Directory where binary files are"
    located: "--[no-]document [TYPES]      Generate documentation for installed gems"
    generate_dot: "For example: rdoc,ri"
    checks: "-w, --[no-]wrappers              Use bin wrappers for executables"
    foo_exec_one_eight: "--[no-]user-install          Install in user's home directory instead"
    dependencies: "--development-all            Install development dependencies for all"
    gem_name: "name of gem to install"
    repository_dot: "You may need to specify the path to the library's headers and"
  }
  output {
    File out_stdout = stdout()
  }
}