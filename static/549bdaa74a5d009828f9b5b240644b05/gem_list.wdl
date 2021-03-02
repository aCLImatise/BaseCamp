version 1.0

task GemList {
  input {
    Boolean? _installed_check
    Boolean? equivalent_to_noinstalled
    Boolean? details_detailed_information
    Boolean? all
    Boolean? _updatesources_update
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
    String regexp
  }
  command <<<
    gem list \
      ~{regexp} \
      ~{if (_installed_check) then "-i" else ""} \
      ~{if (equivalent_to_noinstalled) then "-I" else ""} \
      ~{if (details_detailed_information) then "-d" else ""} \
      ~{if (all) then "--all" else ""} \
      ~{if (_updatesources_update) then "-u" else ""} \
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    _installed_check: ", --[no-]installed             Check for installed gem"
    equivalent_to_noinstalled: "Equivalent to --no-installed"
    details_detailed_information: ", --[no-]details               Display detailed information of gem(s)\\n--[no-]versions              Display only gem names"
    all: "Display all gem versions\\n--[no-]prerelease            Display prerelease versions"
    _updatesources_update: ", --[no-]update-sources        Update local source cache"
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
    regexp: "regexp to look for in gem name"
  }
  output {
    File out_stdout = stdout()
  }
}