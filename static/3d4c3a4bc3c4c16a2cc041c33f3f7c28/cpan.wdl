version 1.0

task Cpan {
  input {
    File? creates_cpanpm_autobundle
    String cpan
    String noninteractive_testing
    String perl_mm_use_default
    String cpan_opts
    String cpan_script_loglevel
    String git_command
  }
  command <<<
    cpan \
      ~{cpan} \
      ~{noninteractive_testing} \
      ~{perl_mm_use_default} \
      ~{cpan_opts} \
      ~{cpan_script_loglevel} \
      ~{git_command} \
      ~{if (creates_cpanpm_autobundle) then "-a" else ""}
  >>>
  parameter_meta {
    creates_cpanpm_autobundle: "Creates a CPAN.pm autobundle with CPAN::Shell->autobundle.\\n-A module [ module ... ]\\nShows the primary maintainers for the specified modules.\\n-c module\\nRuns a `make clean` in the specified module's directories.\\n-C module [ module ... ]\\nShow the Changes files for the specified modules\\n-D module [ module ... ]\\nShow the module details. This prints one line for each out-of-date\\nmodule (meaning, modules locally installed but have newer versions\\non CPAN). Each line has three columns: module name, local version,\\nand CPAN version.\\n-f  Force the specified action, when it normally would have failed. Use\\nthis to install a module even if its tests fail. When you use this\\noption, -i is not optional for installing a module when you need to\\nforce it:\\n% cpan -f -i Module::Foo\\n-F  Turn off CPAN.pm's attempts to lock anything. You should be careful\\nwith this since you might end up with multiple scripts trying to\\nmuck in the same directory. This isn't so much of a concern if\\nyou're loading a special config with \\\"-j\\\", and that config sets up\\nits own work directories.\\n-g module [ module ... ]\\nDownloads to the current directory the latest distribution of the\\nmodule.\\n-G module [ module ... ]\\nUNIMPLEMENTED\\nDownload to the current directory the latest distribution of the\\nmodules, unpack each distribution, and create a git repository for\\neach distribution.\\nIf you want this feature, check out Yanick Champoux's\\n\\\"Git::CPAN::Patch\\\" distribution.\\n-h  Print a help message and exit. When you specify \\\"-h\\\", it ignores all\\nof the other options and arguments.\\n-i module [ module ... ]\\nInstall the specified modules. With no other switches, this switch\\nis implied.\\n-I  Load \\\"local::lib\\\" (think like \\\"-I\\\" for loading lib paths). Too bad\\n\\\"-l\\\" was already taken.\\n-j Config.pm\\nLoad the file that has the CPAN configuration data. This should have\\nthe same format as the standard CPAN/Config.pm file, which defines\\n$CPAN::Config as an anonymous hash.\\n-J  Dump the configuration in the same format that CPAN.pm uses. This is\\nuseful for checking the configuration as well as using the dump as a\\nstarting point for a new, custom configuration.\\n-l  List all installed modules with their versions\\n-L author [ author ... ]\\nList the modules by the specified authors.\\n-m  Make the specified modules.\\n-M mirror1,mirror2,...\\nA comma-separated list of mirrors to use for just this run. The \\\"-P\\\"\\noption can find them for you automatically.\\n-n  Do a dry run, but don't actually install anything. (unimplemented)\\n-O  Show the out-of-date modules.\\n-p  Ping the configured mirrors and print a report\\n-P  Find the best mirrors you could be using and use them for the\\ncurrent session.\\n-r  Recompiles dynamically loaded modules with CPAN::Shell->recompile.\\n-s  Drop in the CPAN.pm shell. This command does this automatically if\\nyou don't specify any arguments.\\n-t module [ module ... ]\\nRun a `make test` on the specified modules.\\n-T  Do not test modules. Simply install them.\\n-u  Upgrade all installed modules. Blindly doing this can really break\\nthings, so keep a backup.\\n-v  Print the script version and CPAN.pm version then exit.\\n-V  Print detailed information about the cpan client.\\n-w  UNIMPLEMENTED\\nTurn on cpan warnings. This checks various things, like directory\\npermissions, and tells you about problems you might have.\\n-x module [ module ... ]\\nFind close matches to the named modules that you think you might\\nhave mistyped. This requires the optional installation of\\nText::Levenshtein or Text::Levenshtein::Damerau.\\n-X  Dump all the namespaces to standard output."
    cpan: "# without arguments, but some switches"
    noninteractive_testing: "Assume no one is paying attention and skips prompts for\\ndistributions that do that correctly. cpan(1) sets this to 1 unless\\nit already has a value (even if that value is false)."
    perl_mm_use_default: "Use the default answer for a prompted questions. cpan(1) sets this\\nto 1 unless it already has a value (even if that value is false)."
    cpan_opts: "As with \\\"PERL5OPTS\\\", a string of additional cpan(1) options to add\\nto those you specify on the command line."
    cpan_script_loglevel: "The log level to use, with either the embedded, minimal logger or\\nLog::Log4perl if it is installed. Possible values are the same as\\nthe \\\"Log::Log4perl\\\" levels: \\\"TRACE\\\", \\\"DEBUG\\\", \\\"INFO\\\", \\\"WARN\\\",\\n\\\"ERROR\\\", and \\\"FATAL\\\". The default is \\\"INFO\\\"."
    git_command: "The path to the \\\"git\\\" binary to use for the Git features. The\\ndefault is \\\"/usr/local/bin/git\\\"."
  }
  output {
    File out_stdout = stdout()
    File out_creates_cpanpm_autobundle = "${in_creates_cpanpm_autobundle}"
  }
}