#!/usr/bin/env cwl-runner

baseCommand:
- fusioncatcher-build.py
class: CommandLineTool
cwlVersion: v1.0
id: fusioncatcher-build.py
inputs:
- doc: ''
  id: arg
  inputBinding:
    position: 0
  type: string
- doc: The output directory where all the outputs files  and directories will be written.
  id: output
  inputBinding:
    prefix: --output
  type: string
- doc: "Organism for which the data is downloaded from Ensembl database and built,\
    \ for example: 'homo_sapiens', 'mus_musculus', 'rattus_norvegicus', 'canis_familiaris',\
    \ etc. Default is 'homo_sapiens'."
  id: organism
  inputBinding:
    prefix: --organism
  type: string
- doc: Configuration file containing the paths to external tools (e.g. Bowtie, etc.)
    in case that they are not in PATH! Default is '/tmp/tmpg5gctayr/bin/../etc/configur
    ation.cfg,/tmp/tmpg5gctayr/bin/configuration.cfg'.
  id: config
  inputBinding:
    prefix: --config
  type: string
- doc: If it is specified then all external tools and all Python tools will be executed
    by FusionCatcher by using their corresponding absolute paths, which will be obined
    from the fusioncatcher/bin/configuration.cfg file. By default no paths are specified
    when executing tools/scripts. Default is 'False'.
  id: force_paths
  inputBinding:
    prefix: --force-paths
  type: boolean
- doc: Ensembl database web site from where the data is downloaded.  e.g. 'www.ensembl.org',
    'uswest.ensembl.org', 'useast.ensembl.org', 'asia.ensembl.org', etc. Default is
    'www.ensembl.org'.
  id: web
  inputBinding:
    prefix: --web
  type: string
- doc: Ensembl database FTP site from where the data is downloaded. Default is 'ftp.ensembl.org'.
  id: ftp_ensembl
  inputBinding:
    prefix: --ftp-ensembl
  type: string
- doc: The path for Ensembl database FTP site from where the data is downloaded.
  id: ftp_ensembl_path
  inputBinding:
    prefix: --ftp-ensembl-path
  type: string
- doc: UCSC database FTP site from where the data is downloaded. Default is 'hgdownload.cse.ucsc.edu'.
  id: ftp_ucsc
  inputBinding:
    prefix: --ftp-ucsc
  type: string
- doc: NCBI database FTP site from where the data is downloaded. Default is 'ftp.ncbi.nlm.nih.gov'.
  id: ftp_ncbi
  inputBinding:
    prefix: --ftp-ncbi
  type: string
- doc: "If it is set then the pipeline will NOT use the BLAT aligner and all options\
    \ and methods which make use of BLAT will be disabled. BLAT aligner is used by\
    \ default. Please, note that BLAT license does not allow BLAT to be used for commercial\
    \ activities. Fore more information regarding BLAT please see its license: <http://users.soe.ucsc.edu/~kent/src/>.\
    \ Default is 'False'."
  id: skip_blat
  inputBinding:
    prefix: --skip-blat
  type: boolean
- doc: If it is set then the genes are enlarged (i.e. their introns include also in
    the transcriptome). Default is 'False'.
  id: enlarge_genes
  inputBinding:
    prefix: --enlarge-genes
  type: boolean
- doc: Number or processes/threads to be used. Default is '0'.
  id: threads
  inputBinding:
    prefix: --threads
  type: string
- doc: If it is set then the pipeline will skip the specified database(s). The choices
    are ['cosmic','conjoing','chi merdb2','chimerdb3','ticdb','cgp','cacg']. If several
    databases should be skipped, then their names shall be separated by comma. Default
    is ''.
  id: skip_database
  inputBinding:
    prefix: --skip-database
  type: string
- doc: It starts executing the workflow from the given step number. This can be used
    when the pipeline has crashed/stopped and one wants to re-run it from from the
    step where it stopped without re-running from the beginning the entire pipeline.
    0 is for restarting automatically and 1 is the first step. This is intended to
    be used for debugging. Default is '0'.
  id: start
  inputBinding:
    prefix: --start
  type: string
- doc: Hash to be used for computing checksum. The choices are ['no','crc32','md5','adler32','sha512','sha256'].
    If it is set up to 'no' then no checksum is used and the entire pipeline is executed
    as a normal shell script. For more information see 'hash_library' in 'workflow.py'.
    This is intended to be used for debugging. Default is 'no'.
  id: hash
  inputBinding:
    prefix: --hash
  type: string
- doc: Preserve intermediate files produced during the run. By default, they are NOT
    deleted upon exit. This is intended to be used for debugging. Default value is
    'False'.
  id: keep
  inputBinding:
    prefix: --keep
  type: boolean
- doc: The name of the checksums file. This is intended to be used for debugging.
    Default value is 'checksums.txt'.
  id: checksums
  inputBinding:
    prefix: --checksums
  type: string
