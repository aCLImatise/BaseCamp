class: CommandLineTool
id: fusioncatcher_build.py.cwl
inputs:
- id: arg
  doc: ''
  type: string
  inputBinding:
    position: 0
- id: output
  doc: The output directory where all the outputs files  and directories will be written.
  type: string
  inputBinding:
    prefix: --output
- id: organism
  doc: "Organism for which the data is downloaded from Ensembl database and built,\
    \ for example: 'homo_sapiens', 'mus_musculus', 'rattus_norvegicus', 'canis_familiaris',\
    \ etc. Default is 'homo_sapiens'."
  type: string
  inputBinding:
    prefix: --organism
- id: config
  doc: Configuration file containing the paths to external tools (e.g. Bowtie, etc.)
    in case that they are not in PATH! Default is '/tmp/tmpg5gctayr/bin/../etc/configur
    ation.cfg,/tmp/tmpg5gctayr/bin/configuration.cfg'.
  type: string
  inputBinding:
    prefix: --config
- id: force_paths
  doc: If it is specified then all external tools and all Python tools will be executed
    by FusionCatcher by using their corresponding absolute paths, which will be obined
    from the fusioncatcher/bin/configuration.cfg file. By default no paths are specified
    when executing tools/scripts. Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --force-paths
- id: web
  doc: Ensembl database web site from where the data is downloaded.  e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  type: string
  inputBinding:
    prefix: --web
- id: ftp_ensembl
  doc: Ensembl database FTP site from where the data is downloaded. Default is 'ftp.ensembl.org'.
  type: string
  inputBinding:
    prefix: --ftp-ensembl
- id: ftp_ensembl_path
  doc: The path for Ensembl database FTP site from where the data is downloaded.
  type: string
  inputBinding:
    prefix: --ftp-ensembl-path
- id: ftp_ucsc
  doc: UCSC database FTP site from where the data is downloaded. Default is 'hgdownload.cse.ucsc.edu'.
  type: string
  inputBinding:
    prefix: --ftp-ucsc
- id: ftp_ncbi
  doc: NCBI database FTP site from where the data is downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  type: string
  inputBinding:
    prefix: --ftp-ncbi
- id: skip_blat
  doc: "If it is set then the pipeline will NOT use the BLAT aligner and all options\
    \ and methods which make use of BLAT will be disabled. BLAT aligner is used by\
    \ default. Please, note that BLAT license does not allow BLAT to be used for commercial\
    \ activities. Fore more information regarding BLAT please see its license: <http://users.soe.ucsc.edu/~kent/src/>.\
    \ Default is 'False'."
  type: boolean
  inputBinding:
    prefix: --skip-blat
- id: enlarge_genes
  doc: If it is set then the genes are enlarged (i.e. their introns include also in
    the transcriptome). Default is 'False'.
  type: boolean
  inputBinding:
    prefix: --enlarge-genes
- id: threads
  doc: Number or processes/threads to be used. Default is '0'.
  type: string
  inputBinding:
    prefix: --threads
- id: skip_database
  doc: If it is set then the pipeline will skip the specified database(s). The choices
    are ['cosmic','conjoing','chi merdb2','chimerdb3','ticdb','cgp','cacg']. If several
    databases should be skipped, then their names shall be separated by comma. Default
    is ''.
  type: string
  inputBinding:
    prefix: --skip-database
- id: start
  doc: It starts executing the workflow from the given step number. This can be used
    when the pipeline has crashed/stopped and one wants to re-run it from from the
    step where it stopped without re-running from the beginning the entire pipeline.
    0 is for restarting automatically and 1 is the first step. This is intended to
    be used for debugging. Default is '0'.
  type: string
  inputBinding:
    prefix: --start
- id: hash
  doc: Hash to be used for computing checksum. The choices are ['no','crc32','md5','adler32','sha512','sha256'].
    If it is set up to 'no' then no checksum is used and the entire pipeline is executed
    as a normal shell script. For more information see 'hash_library' in 'workflow.py'.
    This is intended to be used for debugging. Default is 'no'.
  type: string
  inputBinding:
    prefix: --hash
- id: keep
  doc: Preserve intermediate files produced during the run. By default, they are NOT
    deleted upon exit. This is intended to be used for debugging. Default value is
    'False'.
  type: boolean
  inputBinding:
    prefix: --keep
- id: checksums
  doc: The name of the checksums file. This is intended to be used for debugging.
    Default value is 'checksums.txt'.
  type: string
  inputBinding:
    prefix: --checksums
outputs: []
cwlVersion: v1.1
baseCommand:
- fusioncatcher-build.py
