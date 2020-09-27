version 1.0

task VepInstallpl {
  input {
    Boolean? _destdir_directory
    Boolean? _version_version
    Boolean? _cachedir_set
    Boolean? _update_experimental
    Boolean? _auto_run
    Boolean? _species_commaseparated
    Boolean? _assembly_assembly
    Boolean? _plugins_commaseparated
    Boolean? _quiet_write
    Boolean? _preferbin_use
    Boolean? _nohtslib_attempt
    Boolean? _convert_convert
    Boolean? _cacheurl_override
    Boolean? _fastaurl_override
    String perl
    String install_do_tpl
    String? arguments
  }
  command <<<
    vep_install_pl \
      ~{perl} \
      ~{install_do_tpl} \
      ~{arguments} \
      ~{if (_destdir_directory) then "-d" else ""} \
      ~{if (_version_version) then "-v" else ""} \
      ~{if (_cachedir_set) then "-c" else ""} \
      ~{if (_update_experimental) then "-n" else ""} \
      ~{if (_auto_run) then "-a" else ""} \
      ~{if (_species_commaseparated) then "-s" else ""} \
      ~{if (_assembly_assembly) then "-y" else ""} \
      ~{if (_plugins_commaseparated) then "-g" else ""} \
      ~{if (_quiet_write) then "-q" else ""} \
      ~{if (_preferbin_use) then "-p" else ""} \
      ~{if (_nohtslib_attempt) then "-l" else ""} \
      ~{if (_convert_convert) then "-t" else ""} \
      ~{if (_cacheurl_override) then "-u" else ""} \
      ~{if (_fastaurl_override) then "-f" else ""}
  >>>
  parameter_meta {
    _destdir_directory: "| --DESTDIR     Set destination directory for API install (default = './')"
    _version_version: "| --VERSION     Set API version to install (default = 87)"
    _cachedir_set: "| --CACHEDIR    Set destination directory for cache files (default = '/root/.vep/')"
    _update_experimental: "| --UPDATE      EXPERIMENTAL! Check for and download new VEP versions"
    _auto_run: "| --AUTO        Run installer without user prompts. Use \\\"a\\\" (API + Faidx/htslib),\\n\\\"l\\\" (Faidx/htslib only), \\\"c\\\" (cache), \\\"f\\\" (FASTA), \\\"p\\\" (plugins) to specify\\nparts to install e.g. -a ac for API and cache"
    _species_commaseparated: "| --SPECIES     Comma-separated list of species to install when using --AUTO"
    _assembly_assembly: "| --ASSEMBLY    Assembly name to use if more than one during --AUTO"
    _plugins_commaseparated: "| --PLUGINS     Comma-separated list of plugins to install when using --AUTO"
    _quiet_write: "| --QUIET       Don't write any status output when using --AUTO"
    _preferbin_use: "| --PREFER_BIN  Use this if the installer fails with out of memory errors"
    _nohtslib_attempt: "| --NO_HTSLIB   Don't attempt to install Faidx/htslib"
    _convert_convert: "| --CONVERT     Convert downloaded caches to use tabix for retrieving\\nco-located variants (requires tabix)"
    _cacheurl_override: "| --CACHEURL    Override default cache URL; this may be a local directory or\\na remote (e.g. FTP) address."
    _fastaurl_override: "| --FASTAURL    Override default FASTA URL; this may be a local directory or\\na remote (e.g. FTP) address. The FASTA URL/directory must have\\ngzipped FASTA files under the following structure:\\n[species]/[dna]/\\n"
    perl: ""
    install_do_tpl: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}