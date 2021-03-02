version 1.0

task VepInstall {
  input {
    Boolean? destdir
    Boolean? cache_version
    Boolean? cache_dir
    Boolean? auto
    Boolean? no_update
    Boolean? species
    Boolean? assembly
    Boolean? plugins
    Boolean? plugins_dir
    Boolean? quiet
    Boolean? prefer_bin
    Boolean? no_hts_lib
    Boolean? no_bioperl
    Boolean? convert
    Boolean? cache_url
    Boolean? fasta_url
    String perl
    String install_do_tpl
    String? arguments
  }
  command <<<
    vep_install \
      ~{perl} \
      ~{install_do_tpl} \
      ~{arguments} \
      ~{if (destdir) then "--DESTDIR" else ""} \
      ~{if (cache_version) then "--CACHE_VERSION" else ""} \
      ~{if (cache_dir) then "--CACHEDIR" else ""} \
      ~{if (auto) then "--AUTO" else ""} \
      ~{if (no_update) then "--NO_UPDATE" else ""} \
      ~{if (species) then "--SPECIES" else ""} \
      ~{if (assembly) then "--ASSEMBLY" else ""} \
      ~{if (plugins) then "--PLUGINS" else ""} \
      ~{if (plugins_dir) then "--PLUGINSDIR" else ""} \
      ~{if (quiet) then "--QUIET" else ""} \
      ~{if (prefer_bin) then "--PREFER_BIN" else ""} \
      ~{if (no_hts_lib) then "--NO_HTSLIB" else ""} \
      ~{if (no_bioperl) then "--NO_BIOPERL" else ""} \
      ~{if (convert) then "--CONVERT" else ""} \
      ~{if (cache_url) then "--CACHEURL" else ""} \
      ~{if (fasta_url) then "--FASTAURL" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ensembl-vep:103.1--pl526hecda079_0"
  }
  parameter_meta {
    destdir: "Set destination directory for API install (default = './')"
    cache_version: "Set data (cache, FASTA) version to install if different from --VERSION (default = 103)"
    cache_dir: "Set destination directory for cache files (default = '/root/.vep/')"
    auto: "Run installer without user prompts. Use \\\"a\\\" (API + Faidx/htslib),\\n\\\"l\\\" (Faidx/htslib only), \\\"c\\\" (cache), \\\"f\\\" (FASTA), \\\"p\\\" (plugins) to specify\\nparts to install e.g. -a ac for API and cache"
    no_update: "Do not check for updates to ensembl-vep"
    species: "Comma-separated list of species to install when using --AUTO"
    assembly: "Assembly name to use if more than one during --AUTO"
    plugins: "Comma-separated list of plugins to install when using --AUTO"
    plugins_dir: "Set destination directory for VEP plugins files (default = '/root/.vep/Plugins/')"
    quiet: "Don't write any status output when using --AUTO"
    prefer_bin: "Use this if the installer fails with out of memory errors"
    no_hts_lib: "Don't attempt to install Faidx/htslib"
    no_bioperl: "Don't install BioPerl"
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