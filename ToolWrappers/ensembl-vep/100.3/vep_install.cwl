class: CommandLineTool
id: vep_install.cwl
inputs:
- id: in_destdir
  doc: Set destination directory for API install (default = './')
  type: boolean?
  inputBinding:
    prefix: --DESTDIR
- id: in_cache_version
  doc: Set data (cache, FASTA) version to install if different from --VERSION (default
    = 100)
  type: boolean?
  inputBinding:
    prefix: --CACHE_VERSION
- id: in_cache_dir
  doc: Set destination directory for cache files (default = '/root/.vep/')
  type: boolean?
  inputBinding:
    prefix: --CACHEDIR
- id: in_auto
  doc: "Run installer without user prompts. Use \"a\" (API + Faidx/htslib),\n\"l\"\
    \ (Faidx/htslib only), \"c\" (cache), \"f\" (FASTA), \"p\" (plugins) to specify\n\
    parts to install e.g. -a ac for API and cache"
  type: boolean?
  inputBinding:
    prefix: --AUTO
- id: in_no_update
  doc: Do not check for updates to ensembl-vep
  type: boolean?
  inputBinding:
    prefix: --NO_UPDATE
- id: in_species
  doc: Comma-separated list of species to install when using --AUTO
  type: boolean?
  inputBinding:
    prefix: --SPECIES
- id: in_assembly
  doc: Assembly name to use if more than one during --AUTO
  type: boolean?
  inputBinding:
    prefix: --ASSEMBLY
- id: in_plugins
  doc: Comma-separated list of plugins to install when using --AUTO
  type: boolean?
  inputBinding:
    prefix: --PLUGINS
- id: in_plugins_dir
  doc: Set destination directory for VEP plugins files (default = '/root/.vep/Plugins/')
  type: boolean?
  inputBinding:
    prefix: --PLUGINSDIR
- id: in_quiet
  doc: Don't write any status output when using --AUTO
  type: boolean?
  inputBinding:
    prefix: --QUIET
- id: in_prefer_bin
  doc: Use this if the installer fails with out of memory errors
  type: boolean?
  inputBinding:
    prefix: --PREFER_BIN
- id: in_no_hts_lib
  doc: Don't attempt to install Faidx/htslib
  type: boolean?
  inputBinding:
    prefix: --NO_HTSLIB
- id: in_no_bioperl
  doc: Don't install BioPerl
  type: boolean?
  inputBinding:
    prefix: --NO_BIOPERL
- id: in_convert
  doc: "Convert downloaded caches to use tabix for retrieving\nco-located variants\
    \ (requires tabix)"
  type: boolean?
  inputBinding:
    prefix: --CONVERT
- id: in_cache_url
  doc: "Override default cache URL; this may be a local directory or\na remote (e.g.\
    \ FTP) address."
  type: boolean?
  inputBinding:
    prefix: --CACHEURL
- id: in_fasta_url
  doc: "Override default FASTA URL; this may be a local directory or\na remote (e.g.\
    \ FTP) address. The FASTA URL/directory must have\ngzipped FASTA files under the\
    \ following structure:\n[species]/[dna]/\n"
  type: boolean?
  inputBinding:
    prefix: --FASTAURL
- id: in_ensembl
  doc: ': 100.171092c'
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vep_install
