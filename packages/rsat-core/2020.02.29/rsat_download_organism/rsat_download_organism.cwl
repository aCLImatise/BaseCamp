class: CommandLineTool
id: rsat_download_organism.cwl
inputs:
- id: in_org
  doc: "\\\n-org Saccharomyces_cerevisiae"
  type: string
  inputBinding:
    prefix: -org
- id: in_tax_on
  doc: "\e[1m-no_blast\e[0m | \e[1m-blast\e[0m\nOptions to specify whether the cross-species\
    \ blast files should be\ndownloaded or not together with the genome.\nDefault:\
    \ -no_blast\nThese files are used by several comparative genomics programs\n(\e\
    [33mget-orthologs\e[0m, \e[33mfootprint-discovery\e[0m, \e[33mfootprint-scan\e\
    [0m...). With the\nincrease of th number of sequenced genomes, the blast-hit folder\n\
    occupies a large disk space, and should be downloaded only\n\e[1m-dir output directory\e\
    [0m\nDirectory for exporting the genome(s) of the selected organism(s).\nBy default,\
    \ genomes are exported in the standar RSAT genome folder\n($RSAT/public_html/data/genomes/).\
    \ This requires write permissions\non this folder. If you don't have those writing\
    \ permissions,\nspecifying an alternative directory may be convenient for obtaining\n\
    the data files, but the downloaded genoems will not be supported on\nthe local\
    \ machine unless the configuration file is adapted (and this\nanyways requires\
    \ the writing permission in the RSAT directory).\n\e[1m-o outputfile\e[0m\nThe\
    \ output file contains timing and information about downloaded\norganisms (installation\
    \ directories, ...).\nIf no output file is specified, the standard output is used.\
    \ This\nallows to use the command within a pipe.\n\e[1m-server server/path\e[0m\n\
    Specify an alternative server.\nDefault: http://rsat-tagc.univ-mrs.fr/rsat/\n\e\
    [1m-rsync\e[0m\nThis option requires a ssh login on the main RSAT server, it is\n\
    reserved for the RSAT maintenance team.\nWhen this option is activated, genomes\
    \ are downloaded with the\nprogram \e[33mrsync\e[0m is used instead of \e[33mwget\e\
    [0m. This ensures a faster\ntransfer (using the powerful featres of rsync such\
    \ as on-the-fly\ncompression, smart updating, etc).\n\e[1m-ssh your.login@some.rsat.server\e\
    [0m =item \e[1m-ssh\nyour.login@some.rsat.server:rsat_path_on_server\e[0m\nThis\
    \ option requires a ssh login on the main RSAT server, it is\nreserved for the\
    \ RSAT maintenance team.\nWhen this option is activated, genomes are downloaded\
    \ with the\nprogram \e[33mrsync\e[0m is used instead of \e[33mwget\e[0m. This\
    \ ensures a faster\ntransfer (using the powerful features of rsync such as on-the-fly\n\
    compression, smart updating, etc).\nThe rsync connection however requires a user\
    \ account enabled with\nssh access on the server, so it is reserved to the members\
    \ of the\nRSAT team.\nThe RSAT path on the remote server can be specified in the\
    \ argument.\nIf not, the program will attempt to obtain the RSAT environment\n\
    variable by ssh connection to the server, but this might fail (e.g.\nif the server\
    \ issues some message at login).\nExamples:\ndownload-organism -v 1 -org Saccharomyces_cerevisiae\
    \ \\\n-ssh your.login@your.rsat.server.org\ndownload-organism -v 1 -org Saccharomyces_cerevisiae\
    \ \\\n-ssh your.login@your.rsat.server.org:rsat_path_on_server\n\e[1m-bashrc bahrc_file\e\
    [0m\nThis option is only used with the option -ssh.\nSpecify the path of the RSAT\
    \ bashrc file. The ssh synchronization\nmode requires for the client to load the\
    \ RSAT_config.bashrc file.\nDepending on server configuration, this file might\
    \ not be loaded in\nnon-interactive secure shell mode. The file specified with\
    \ the\noption -bashrc will be sourced as the first instruction of the\nremote\
    \ ssh commands.\n\e[1m-upload\e[0m\nThis option is only possible with the ssh\
    \ option.\n\e[1m-skip\e[0m\nSkip the N first organisms of the list. This option\
    \ is useful for\nresuming an interrupted download.\n\e[1m-last\e[0m\nStop after\
    \ the N first organisms of the list. This option is useful\nfor testing the options\
    \ with taxon-wise queries.\n\e[1m-no_config\e[0m\nDownload (or upload) the files\
    \ but do not run the configuration task\n(install-organisms -task config).\n\e\
    [1m-dry\e[0m\nDry run: print the commands but do not execute them (just for\n\
    testing).\n"
  type: long
  inputBinding:
    prefix: -taxon
- id: in_download_organism
  doc: "\e[1mVERSION\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_jacques_do_tv_and_otheldenatulbdotacdotbe
  doc: "\e[1mCATEGORY\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_supported_organisms_server
  doc: The query to the remote server can also be restricted to a given taxon.
  type: string
  inputBinding:
    position: 0
- id: in_rs_at_dot
  doc: "This differs from \e[33mdownload-organism\e[0m, which transfers the RSAT-formatted"
  type: string
  inputBinding:
    position: 0
- id: in_wget_dot
  doc: "\e[1manonymous rsync\e[0m"
  type: string
  inputBinding:
    position: 0
- id: in_escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two
  doc: The option -org can be used iteratively on teh command line to
  type: double
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- download-organism
