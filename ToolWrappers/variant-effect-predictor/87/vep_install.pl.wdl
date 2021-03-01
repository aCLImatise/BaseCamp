version 1.0

task VepInstallpl {
  input {
    Boolean? destdir
    Boolean? version
    Boolean? cache_dir
    Boolean? update
    Boolean? auto
    Boolean? species
    Boolean? assembly
    Boolean? plugins
    Boolean? quiet
    Boolean? prefer_bin
    Boolean? no_hts_lib
    Boolean? convert
    Boolean? cache_url
    Boolean? fasta_url
    String perl
    String install_do_tpl
    String? arguments
  }
  command <<<
    vep_install_pl \
      ~{perl} \
      ~{install_do_tpl} \
      ~{arguments} \
      ~{if (destdir) then "--DESTDIR" else ""} \
      ~{if (version) then "--VERSION" else ""} \
      ~{if (cache_dir) then "--CACHEDIR" else ""} \
      ~{if (update) then "--UPDATE" else ""} \
      ~{if (auto) then "--AUTO" else ""} \
      ~{if (species) then "--SPECIES" else ""} \
      ~{if (assembly) then "--ASSEMBLY" else ""} \
      ~{if (plugins) then "--PLUGINS" else ""} \
      ~{if (quiet) then "--QUIET" else ""} \
      ~{if (prefer_bin) then "--PREFER_BIN" else ""} \
      ~{if (no_hts_lib) then "--NO_HTSLIB" else ""} \
      ~{if (convert) then "--CONVERT" else ""} \
      ~{if (cache_url) then "--CACHEURL" else ""} \
      ~{if (fasta_url) then "--FASTAURL" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    destdir: "Set destination directory for API install (default = './')"
    version: "Set API version to install (default = 87)"
    cache_dir: "Set destination directory for cache files (default = '/root/.vep/')"
    update: "EXPERIMENTAL! Check for and download new VEP versions"
    auto: "Run installer without user prompts. Use \\\"a\\\" (API + Faidx/htslib),\\n\\\"l\\\" (Faidx/htslib only), \\\"c\\\" (cache), \\\"f\\\" (FASTA), \\\"p\\\" (plugins) to specify\\nparts to install e.g. -a ac for API and cache"
    species: "Comma-separated list of species to install when using --AUTO"
    assembly: "Assembly name to use if more than one during --AUTO"
    plugins: "Comma-separated list of plugins to install when using --AUTO"
    quiet: "Don't write any status output when using --AUTO"
    prefer_bin: "Use this if the installer fails with out of memory errors"
    no_hts_lib: "Don't attempt to install Faidx/htslib"
    convert: "Convert downloaded caches to use tabix for retrieving\\nco-located variants (requires tabix)"
    cache_url: "Override default cache URL; this may be a local directory or\\na remote (e.g. FTP) address."
    fasta_url: "Override default FASTA URL; this may be a local directory or\\na remote (e.g. FTP) address. The FASTA URL/directory must have\\ngzipped FASTA files under the following structure:\\n[species]/[dna]/\\n"
    perl: ""
    install_do_tpl: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}