version 1.0

task Cpan {
  input {
    Array[String] shows_primary_maintainers
    String? runs_make_clean
    Array[String] show_changes_files
    Array[String] show_module_details
    Boolean? force_specified_action
    Boolean? turn_cpanpms_attempts
    Array[String] downloads_latest_distribution
    Array[String] install_specified_modules
    Boolean? load_too_bad
    File? load_file_has
    Boolean? dump_configuration_same
    Boolean? list_installed_modules
    Array[String] list_modules_specified
    Boolean? make_specified_modules
    Int? mirror_commaseparated_list
    Boolean? do_dry_run
    Boolean? show_outofdate_modules
    Boolean? ping_configured_mirrors
    Boolean? find_best_mirrors
    Boolean? recompiles_dynamically_loaded
    Boolean? drop_cpanpm_shell
    Array[String] run_make_test
    Boolean? test_modules_simply
    Boolean? upgrade_installed_modules
    Boolean? print_script_version
    Boolean? print_detailed_information
    Boolean? unimplementedturn_cpan_warnings
    Array[String] find_close_matches
    Boolean? dump_namespaces_standard
    String cpan
    String options
    String unimplemented
    String examples
    String noninteractive_testing
    String perl_mm_use_default
    String cpan_opts
    String cpan_script_loglevel
    String git_command
  }
  command <<<
    cpan \
      ~{cpan} \
      ~{options} \
      ~{unimplemented} \
      ~{examples} \
      ~{noninteractive_testing} \
      ~{perl_mm_use_default} \
      ~{cpan_opts} \
      ~{cpan_script_loglevel} \
      ~{git_command} \
      ~{if defined(shows_primary_maintainers) then ("-A " +  '"' + shows_primary_maintainers + '"') else ""} \
      ~{if defined(runs_make_clean) then ("-c " +  '"' + runs_make_clean + '"') else ""} \
      ~{if defined(show_changes_files) then ("-C " +  '"' + show_changes_files + '"') else ""} \
      ~{if defined(show_module_details) then ("-D " +  '"' + show_module_details + '"') else ""} \
      ~{if (force_specified_action) then "-f" else ""} \
      ~{if (turn_cpanpms_attempts) then "-F" else ""} \
      ~{if defined(downloads_latest_distribution) then ("-g " +  '"' + downloads_latest_distribution + '"') else ""} \
      ~{if defined(install_specified_modules) then ("-i " +  '"' + install_specified_modules + '"') else ""} \
      ~{if (load_too_bad) then "-I" else ""} \
      ~{if defined(load_file_has) then ("-j " +  '"' + load_file_has + '"') else ""} \
      ~{if (dump_configuration_same) then "-J" else ""} \
      ~{if (list_installed_modules) then "-l" else ""} \
      ~{if defined(list_modules_specified) then ("-L " +  '"' + list_modules_specified + '"') else ""} \
      ~{if (make_specified_modules) then "-m" else ""} \
      ~{if defined(mirror_commaseparated_list) then ("-M " +  '"' + mirror_commaseparated_list + '"') else ""} \
      ~{if (do_dry_run) then "-n" else ""} \
      ~{if (show_outofdate_modules) then "-O" else ""} \
      ~{if (ping_configured_mirrors) then "-p" else ""} \
      ~{if (find_best_mirrors) then "-P" else ""} \
      ~{if (recompiles_dynamically_loaded) then "-r" else ""} \
      ~{if (drop_cpanpm_shell) then "-s" else ""} \
      ~{if defined(run_make_test) then ("-t " +  '"' + run_make_test + '"') else ""} \
      ~{if (test_modules_simply) then "-T" else ""} \
      ~{if (upgrade_installed_modules) then "-u" else ""} \
      ~{if (print_script_version) then "-v" else ""} \
      ~{if (print_detailed_information) then "-V" else ""} \
      ~{if (unimplementedturn_cpan_warnings) then "-w" else ""} \
      ~{if defined(find_close_matches) then ("-x " +  '"' + find_close_matches + '"') else ""} \
      ~{if (dump_namespaces_standard) then "-X" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    shows_primary_maintainers: "Shows the primary maintainers for the specified modules."
    runs_make_clean: "Runs a `make clean` in the specified module's directories."
    show_changes_files: "Show the Changes files for the specified modules"
    show_module_details: "Show the module details. This prints one line for each out-of-date\\nmodule (meaning, modules locally installed but have newer versions\\non CPAN). Each line has three columns: module name, local version,\\nand CPAN version."
    force_specified_action: "Force the specified action, when it normally would have failed. Use\\nthis to install a module even if its tests fail. When you use this\\noption, -i is not optional for installing a module when you need to\\nforce it:\\n% cpan -f -i Module::Foo"
    turn_cpanpms_attempts: "Turn off CPAN.pm's attempts to lock anything. You should be careful\\nwith this since you might end up with multiple scripts trying to\\nmuck in the same directory. This isn't so much of a concern if\\nyou're loading a special config with \\\"-j\\\", and that config sets up\\nits own work directories."
    downloads_latest_distribution: "Downloads to the current directory the latest distribution of the\\nmodule."
    install_specified_modules: "Install the specified modules. With no other switches, this switch\\nis implied."
    load_too_bad: "Load \\\"local::lib\\\" (think like \\\"-I\\\" for loading lib paths). Too bad\\n\\\"-l\\\" was already taken."
    load_file_has: "Load the file that has the CPAN configuration data. This should have\\nthe same format as the standard CPAN/Config.pm file, which defines\\n$CPAN::Config as an anonymous hash."
    dump_configuration_same: "Dump the configuration in the same format that CPAN.pm uses. This is\\nuseful for checking the configuration as well as using the dump as a\\nstarting point for a new, custom configuration."
    list_installed_modules: "List all installed modules with their versions"
    list_modules_specified: "List the modules by the specified authors."
    make_specified_modules: "Make the specified modules."
    mirror_commaseparated_list: ",mirror2,...\\nA comma-separated list of mirrors to use for just this run. The \\\"-P\\\"\\noption can find them for you automatically."
    do_dry_run: "Do a dry run, but don't actually install anything. (unimplemented)"
    show_outofdate_modules: "Show the out-of-date modules."
    ping_configured_mirrors: "Ping the configured mirrors and print a report"
    find_best_mirrors: "Find the best mirrors you could be using and use them for the\\ncurrent session."
    recompiles_dynamically_loaded: "Recompiles dynamically loaded modules with CPAN::Shell->recompile."
    drop_cpanpm_shell: "Drop in the CPAN.pm shell. This command does this automatically if\\nyou don't specify any arguments."
    run_make_test: "Run a `make test` on the specified modules."
    test_modules_simply: "Do not test modules. Simply install them."
    upgrade_installed_modules: "Upgrade all installed modules. Blindly doing this can really break\\nthings, so keep a backup."
    print_script_version: "Print the script version and CPAN.pm version then exit."
    print_detailed_information: "Print detailed information about the cpan client."
    unimplementedturn_cpan_warnings: "UNIMPLEMENTED\\nTurn on cpan warnings. This checks various things, like directory\\npermissions, and tells you about problems you might have."
    find_close_matches: "Find close matches to the named modules that you think you might\\nhave mistyped. This requires the optional installation of\\nText::Levenshtein or Text::Levenshtein::Damerau."
    dump_namespaces_standard: "Dump all the namespaces to standard output."
    cpan: "# without arguments, but some switches"
    options: "-a  Creates a CPAN.pm autobundle with CPAN::Shell->autobundle."
    unimplemented: "Download to the current directory the latest distribution of the"
    examples: "# print a help message\\ncpan -h\\n# print the version numbers\\ncpan -v\\n# create an autobundle\\ncpan -a\\n# recompile modules\\ncpan -r\\n# upgrade all installed modules\\ncpan -u\\n# install modules ( sole -i is optional )\\ncpan -i Netscape::Booksmarks Business::ISBN\\n# force install modules ( must use -i )\\ncpan -fi CGI::Minimal URI\\n# install modules but without testing them\\ncpan -Ti CGI::Minimal URI"
    noninteractive_testing: "Assume no one is paying attention and skips prompts for\\ndistributions that do that correctly. cpan(1) sets this to 1 unless\\nit already has a value (even if that value is false)."
    perl_mm_use_default: "Use the default answer for a prompted questions. cpan(1) sets this\\nto 1 unless it already has a value (even if that value is false)."
    cpan_opts: "As with \\\"PERL5OPTS\\\", a string of additional cpan(1) options to add\\nto those you specify on the command line."
    cpan_script_loglevel: "The log level to use, with either the embedded, minimal logger or\\nLog::Log4perl if it is installed. Possible values are the same as\\nthe \\\"Log::Log4perl\\\" levels: \\\"TRACE\\\", \\\"DEBUG\\\", \\\"INFO\\\", \\\"WARN\\\",\\n\\\"ERROR\\\", and \\\"FATAL\\\". The default is \\\"INFO\\\"."
    git_command: "The path to the \\\"git\\\" binary to use for the Git features. The\\ndefault is \\\"/usr/local/bin/git\\\"."
  }
  output {
    File out_stdout = stdout()
  }
}