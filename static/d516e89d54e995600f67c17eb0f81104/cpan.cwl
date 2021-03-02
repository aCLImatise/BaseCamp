class: CommandLineTool
id: cpan.cwl
inputs:
- id: in_shows_primary_maintainers
  doc: Shows the primary maintainers for the specified modules.
  type: string[]
  inputBinding:
    prefix: -A
- id: in_runs_make_clean
  doc: Runs a `make clean` in the specified module's directories.
  type: string?
  inputBinding:
    prefix: -c
- id: in_show_changes_files
  doc: Show the Changes files for the specified modules
  type: string[]
  inputBinding:
    prefix: -C
- id: in_show_module_details
  doc: "Show the module details. This prints one line for each out-of-date\nmodule\
    \ (meaning, modules locally installed but have newer versions\non CPAN). Each\
    \ line has three columns: module name, local version,\nand CPAN version."
  type: string[]
  inputBinding:
    prefix: -D
- id: in_force_specified_action
  doc: "Force the specified action, when it normally would have failed. Use\nthis\
    \ to install a module even if its tests fail. When you use this\noption, -i is\
    \ not optional for installing a module when you need to\nforce it:\n% cpan -f\
    \ -i Module::Foo"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_turn_cpanpms_attempts
  doc: "Turn off CPAN.pm's attempts to lock anything. You should be careful\nwith\
    \ this since you might end up with multiple scripts trying to\nmuck in the same\
    \ directory. This isn't so much of a concern if\nyou're loading a special config\
    \ with \"-j\", and that config sets up\nits own work directories."
  type: boolean?
  inputBinding:
    prefix: -F
- id: in_downloads_latest_distribution
  doc: "Downloads to the current directory the latest distribution of the\nmodule."
  type: string[]
  inputBinding:
    prefix: -g
- id: in_install_specified_modules
  doc: "Install the specified modules. With no other switches, this switch\nis implied."
  type: string[]
  inputBinding:
    prefix: -i
- id: in_load_too_bad
  doc: "Load \"local::lib\" (think like \"-I\" for loading lib paths). Too bad\n\"\
    -l\" was already taken."
  type: boolean?
  inputBinding:
    prefix: -I
- id: in_load_file_has
  doc: "Load the file that has the CPAN configuration data. This should have\nthe\
    \ same format as the standard CPAN/Config.pm file, which defines\n$CPAN::Config\
    \ as an anonymous hash."
  type: File?
  inputBinding:
    prefix: -j
- id: in_dump_configuration_same
  doc: "Dump the configuration in the same format that CPAN.pm uses. This is\nuseful\
    \ for checking the configuration as well as using the dump as a\nstarting point\
    \ for a new, custom configuration."
  type: boolean?
  inputBinding:
    prefix: -J
- id: in_list_installed_modules
  doc: List all installed modules with their versions
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_list_modules_specified
  doc: List the modules by the specified authors.
  type: string[]
  inputBinding:
    prefix: -L
- id: in_make_specified_modules
  doc: Make the specified modules.
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_mirror_commaseparated_list
  doc: ",mirror2,...\nA comma-separated list of mirrors to use for just this run.\
    \ The \"-P\"\noption can find them for you automatically."
  type: long?
  inputBinding:
    prefix: -M
- id: in_do_dry_run
  doc: Do a dry run, but don't actually install anything. (unimplemented)
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_show_outofdate_modules
  doc: Show the out-of-date modules.
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_ping_configured_mirrors
  doc: Ping the configured mirrors and print a report
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_find_best_mirrors
  doc: "Find the best mirrors you could be using and use them for the\ncurrent session."
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_recompiles_dynamically_loaded
  doc: Recompiles dynamically loaded modules with CPAN::Shell->recompile.
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_drop_cpanpm_shell
  doc: "Drop in the CPAN.pm shell. This command does this automatically if\nyou don't\
    \ specify any arguments."
  type: boolean?
  inputBinding:
    prefix: -s
- id: in_run_make_test
  doc: Run a `make test` on the specified modules.
  type: string[]
  inputBinding:
    prefix: -t
- id: in_test_modules_simply
  doc: Do not test modules. Simply install them.
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_upgrade_installed_modules
  doc: "Upgrade all installed modules. Blindly doing this can really break\nthings,\
    \ so keep a backup."
  type: boolean?
  inputBinding:
    prefix: -u
- id: in_print_script_version
  doc: Print the script version and CPAN.pm version then exit.
  type: boolean?
  inputBinding:
    prefix: -v
- id: in_print_detailed_information
  doc: Print detailed information about the cpan client.
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_unimplementedturn_cpan_warnings
  doc: "UNIMPLEMENTED\nTurn on cpan warnings. This checks various things, like directory\n\
    permissions, and tells you about problems you might have."
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_find_close_matches
  doc: "Find close matches to the named modules that you think you might\nhave mistyped.\
    \ This requires the optional installation of\nText::Levenshtein or Text::Levenshtein::Damerau."
  type: string[]
  inputBinding:
    prefix: -x
- id: in_dump_namespaces_standard
  doc: Dump all the namespaces to standard output.
  type: boolean?
  inputBinding:
    prefix: -X
- id: in_cpan
  doc: '# without arguments, but some switches'
  type: string
  inputBinding:
    position: 0
- id: in_options
  doc: -a  Creates a CPAN.pm autobundle with CPAN::Shell->autobundle.
  type: string
  inputBinding:
    position: 0
- id: in_unimplemented
  doc: Download to the current directory the latest distribution of the
  type: string
  inputBinding:
    position: 1
- id: in_examples
  doc: "# print a help message\ncpan -h\n# print the version numbers\ncpan -v\n# create\
    \ an autobundle\ncpan -a\n# recompile modules\ncpan -r\n# upgrade all installed\
    \ modules\ncpan -u\n# install modules ( sole -i is optional )\ncpan -i Netscape::Booksmarks\
    \ Business::ISBN\n# force install modules ( must use -i )\ncpan -fi CGI::Minimal\
    \ URI\n# install modules but without testing them\ncpan -Ti CGI::Minimal URI"
  type: string
  inputBinding:
    position: 0
- id: in_noninteractive_testing
  doc: "Assume no one is paying attention and skips prompts for\ndistributions that\
    \ do that correctly. cpan(1) sets this to 1 unless\nit already has a value (even\
    \ if that value is false)."
  type: string
  inputBinding:
    position: 0
- id: in_perl_mm_use_default
  doc: "Use the default answer for a prompted questions. cpan(1) sets this\nto 1 unless\
    \ it already has a value (even if that value is false)."
  type: string
  inputBinding:
    position: 1
- id: in_cpan_opts
  doc: "As with \"PERL5OPTS\", a string of additional cpan(1) options to add\nto those\
    \ you specify on the command line."
  type: string
  inputBinding:
    position: 2
- id: in_cpan_script_loglevel
  doc: "The log level to use, with either the embedded, minimal logger or\nLog::Log4perl\
    \ if it is installed. Possible values are the same as\nthe \"Log::Log4perl\" levels:\
    \ \"TRACE\", \"DEBUG\", \"INFO\", \"WARN\",\n\"ERROR\", and \"FATAL\". The default\
    \ is \"INFO\"."
  type: string
  inputBinding:
    position: 3
- id: in_git_command
  doc: "The path to the \"git\" binary to use for the Git features. The\ndefault is\
    \ \"/usr/local/bin/git\"."
  type: string
  inputBinding:
    position: 4
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- cpan
