class: CommandLineTool
id: vep_install.cwl
inputs:
- id: in__destdir_directory
  doc: "| --DESTDIR     Set destination directory for API install (default = './')"
  type: boolean
  inputBinding:
    prefix: -d
- id: in_cache_version
  doc: Set data (cache, FASTA) version to install if different from --VERSION (default
    = 100)
  type: boolean
  inputBinding:
    prefix: --CACHE_VERSION
- id: in__cachedir_set
  doc: "| --CACHEDIR    Set destination directory for cache files (default = '/root/.vep/')"
  type: boolean
  inputBinding:
    prefix: -c
- id: in__auto_run
  doc: "| --AUTO        Run installer without user prompts. Use \"a\" (API + Faidx/htslib),\n\
    \"l\" (Faidx/htslib only), \"c\" (cache), \"f\" (FASTA), \"p\" (plugins) to specify\n\
    parts to install e.g. -a ac for API and cache"
  type: boolean
  inputBinding:
    prefix: -a
- id: in__noupdate_check
  doc: '| --NO_UPDATE   Do not check for updates to ensembl-vep'
  type: boolean
  inputBinding:
    prefix: -n
- id: in__species_commaseparated
  doc: '| --SPECIES     Comma-separated list of species to install when using --AUTO'
  type: boolean
  inputBinding:
    prefix: -s
- id: in__assembly_assembly
  doc: '| --ASSEMBLY    Assembly name to use if more than one during --AUTO'
  type: boolean
  inputBinding:
    prefix: -y
- id: in__plugins_commaseparated
  doc: '| --PLUGINS     Comma-separated list of plugins to install when using --AUTO'
  type: boolean
  inputBinding:
    prefix: -g
- id: in__pluginsdir_set
  doc: "| --PLUGINSDIR  Set destination directory for VEP plugins files (default =\
    \ '/root/.vep/Plugins/')"
  type: boolean
  inputBinding:
    prefix: -r
- id: in__quiet_write
  doc: "| --QUIET       Don't write any status output when using --AUTO"
  type: boolean
  inputBinding:
    prefix: -q
- id: in__preferbin_use
  doc: '| --PREFER_BIN  Use this if the installer fails with out of memory errors'
  type: boolean
  inputBinding:
    prefix: -p
- id: in__nohtslib_attempt
  doc: "| --NO_HTSLIB   Don't attempt to install Faidx/htslib"
  type: boolean
  inputBinding:
    prefix: -l
- id: in_no_bioperl
  doc: Don't install BioPerl
  type: boolean
  inputBinding:
    prefix: --NO_BIOPERL
- id: in__convert_convert
  doc: "| --CONVERT     Convert downloaded caches to use tabix for retrieving\nco-located\
    \ variants (requires tabix)"
  type: boolean
  inputBinding:
    prefix: -t
- id: in__cacheurl_override
  doc: "| --CACHEURL    Override default cache URL; this may be a local directory\
    \ or\na remote (e.g. FTP) address."
  type: boolean
  inputBinding:
    prefix: -u
- id: in__fastaurl_override
  doc: "| --FASTAURL    Override default FASTA URL; this may be a local directory\
    \ or\na remote (e.g. FTP) address. The FASTA URL/directory must have\ngzipped\
    \ FASTA files under the following structure:\n[species]/[dna]/\n"
  type: boolean
  inputBinding:
    prefix: -f
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
  type: string
  inputBinding:
    position: 2
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- vep_install
