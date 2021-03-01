class: CommandLineTool
id: vep_install.pl.cwl
inputs:
- id: in_destdir
  doc: Set destination directory for API install (default = './')
  type: boolean?
  inputBinding:
    prefix: --DESTDIR
- id: in_version
  doc: Set API version to install (default = 87)
  type: boolean?
  inputBinding:
    prefix: --VERSION
- id: in_cache_dir
  doc: Set destination directory for cache files (default = '/root/.vep/')
  type: boolean?
  inputBinding:
    prefix: --CACHEDIR
- id: in_update
  doc: EXPERIMENTAL! Check for and download new VEP versions
  type: boolean?
  inputBinding:
    prefix: --UPDATE
- id: in_auto
  doc: "Run installer without user prompts. Use \"a\" (API + Faidx/htslib),\n\"l\"\
    \ (Faidx/htslib only), \"c\" (cache), \"f\" (FASTA), \"p\" (plugins) to specify\n\
    parts to install e.g. -a ac for API and cache"
  type: boolean?
  inputBinding:
    prefix: --AUTO
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
- id: in_perl
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: in_install_do_tpl
  doc: ''
  type: string
  inputBinding:
    position: 1
- id: in_arguments
  doc: ''
  type: string?
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- vep_install.pl
