class: CommandLineTool
id: rsat_install_organism.cwl
inputs:
- id: in_help
  doc: (must be first argument) display options
  type: boolean
  inputBinding:
    prefix: -help
- id: in_verbose
  doc: verbose
  type: boolean
  inputBinding:
    prefix: -v
- id: in_org
  doc: "organism name without spaces (e.g. Saccharomyces_cerevisiae)\nThe option -org\
    \ can be used iteratively on the same\ncommand line to iterate the installation\
    \ over multiple\norganisms."
  type: boolean
  inputBinding:
    prefix: -org
- id: in_org_file
  doc: "Text file containing a list of organisms to install.\nThe first word of each\
    \ row is taken as a query\norgnanism. Further information of the same row is\n\
    ignored."
  type: File
  inputBinding:
    prefix: -org_file
- id: in_all_organisms
  doc: "Install all the organisms found in the Refseq\ndirectory (see option -refseq)."
  type: boolean
  inputBinding:
    prefix: -all_organisms
- id: in_tax_on
  doc: "taxon name (mutually exclusive with -org)\nThe installation will iterate over\
    \ all organisms of\nthe selected taxon. Note that the command will only\napply\
    \ to the organisms previously declared with the\ncommand install-organism -task\
    \ config. The option\n-taxon is thus convenient for re-running installation\n\
    tasks on previously installed organisms rather than\nfor installing new genomes\
    \ downloaded e.g. from NCBI.\nThe option -taxon can be used iteratively on the\
    \ same\ncommand line to iterate the installation over multiple\ntaxa."
  type: boolean
  inputBinding:
    prefix: -taxon
- id: in_group
  doc: "group according to the NCBI/Refseq ftp/rsync\nsite (ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq).\n\
    Examples: bacteria, fungi, protozoa, plant,\ninvertebrate, vertebrate_mammalian,\
    \ vertebrate_other"
  type: string
  inputBinding:
    prefix: -group
- id: in_species
  doc: "name, with space replaced by underscore\n(e.g. Saccharomyces_cerevisiae).\n\
    Note that one species may correspond to several\norganisms if several strains\
    \ are available for this\nspecies. In particular, for some bacteria there are\n\
    several thousands of sequenced strains\n(e.g. Escherichia coli).\nThe option -max_strains\
    \ can be used to restrict the\nnumber of installed strains per species.\nAn alternative\
    \ is to specify a custom list of species\n+ strains with the option -org_table\
    \ (this is the\nrecommended way to install multiple genomes from\nNCBI)."
  type: long
  inputBinding:
    prefix: -species
- id: in_species_file
  doc: containing species names in the first
  type: File
  inputBinding:
    prefix: -species_file
- id: in_strain
  doc: "the download to a single strain or\nassembly. By default all strains of the\
    \ selected\nspecies are downloaded, but this can be heavy for some\nbacterial\
    \ species where thousands of strains have been\nsequenced (e.g. Escherichia coli).\n\
    Note: the RSAT organism name is automatically built by\nconcatenating the NCBI\
    \ species name and strain\nidentifier."
  type: string
  inputBinding:
    prefix: -strain
- id: in_assembly_table
  doc: "Table extracted from the NCBI ftp site, indicating the\norganisms to install.\n\
    Example: assembly table of fungi:\nftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/fungi/assembly_summary.txt\n\
    The table can be the full table for a given group, or\na custom subset, which\
    \ can be selected on some\ninformative fields of the assembly table.\nWe recommend\
    \ to select the subset of rows having\neither \"Complete genome\" or \"Chromosome\"\
    \ in the 12th\ncolumn (\"assembly_level\"), and to add a filter on\n\"refseq_category\"\
    \ in order to select \"representative\ngenome\" or \"reference genome\".\nThe\
    \ assembly table can also be filtered out manually\nin order to select a custom\
    \ subset of the available\ngenomes."
  type: boolean
  inputBinding:
    prefix: -assembly_table
- id: in_refseq
  doc: "Local directory containing the mirror of the refseq\ngenomes found on the\
    \ NCBI site:\nftp://ftp.ncbi.nih.gov/genomes/refseq\nNormally, the refseq directory\
    \ is specified by\ndefining a global variable REFSEQ_DIR in the config\nfile.\
    \ The option -refseq allows to overwrite this\nvalue."
  type: boolean
  inputBinding:
    prefix: -refseq
- id: in_skip
  doc: "# Skip the first # organisms of the list.\nThis option is convenient to resume\
    \ the installation\nof a list of organisms, when it has been interrupted.\nIt\
    \ also allows to organize the installation by chunks\nof organisms."
  type: boolean
  inputBinding:
    prefix: -skip
- id: in_skip_species
  doc: "# skip the first # of the list of NCBI species.\nNote that one species can\
    \ correspond to several\norganisms, if several strains have been sequenced."
  type: boolean
  inputBinding:
    prefix: -skip_species
- id: in_last
  doc: "# Stop after the first # organisms of the list.\nThis option can be used to\
    \ organize the installation\nby chunks of organisms."
  type: boolean
  inputBinding:
    prefix: -last
- id: in_last_species
  doc: '# Stop after the first # species of the NCBI'
  type: boolean
  inputBinding:
    prefix: -last_species
- id: in_source
  doc: source
  type: string
  inputBinding:
    prefix: -source
- id: in_dir
  doc: "{install}\nAbsolute path of the installation directory.\nBEWARE : you should\
    \ provide the absolute path of the\ninstallation directory, not the relative path."
  type: File
  inputBinding:
    prefix: -dir
- id: in_batch
  doc: "some tasks (for example the calibration of oligos\nand dyads) in batch mode.\
    \  This options works on our\nlab cluster, but could be adapted for other\nconfigurations\
    \ by adapting the parameters in\nRSAT_config.props."
  type: string
  inputBinding:
    prefix: -batch
- id: in_queue
  doc: "specify a queue to send the job with the option -batch.\nOn this instance\
    \ of RSAT, default queue is rsat\nType 'qstat -f' to get a list of existing queues."
  type: boolean
  inputBinding:
    prefix: -queue
- id: in_specify_alternative_file
  doc: "Specify an alternative organism configuration file for the\ngenome to be installed.\n\
    By default, the organism configuration file is\n$RSAT/public_html/data/genomes/supported_organisms.pl"
  type: boolean
  inputBinding:
    prefix: -config
- id: in_backup_org_table
  doc: "Store a backup copy of the organism table before\noverwriting it."
  type: boolean
  inputBinding:
    prefix: -backup_org_table
- id: in_local
  doc: "Absolute path of a RSA local config file.\nBy default, the newly installed\
    \ organism is added to\nthe main RSA config file is changed (provided the user\n\
    has write access to the RSA config file).\nIn addition to the organisms installed\
    \ by the RSAT\nsystem administrator (found in\n/usr/local/share/rsat/public_html/data/supported_organisms.tab),\
    \ users can\ninstall some organisms locally.\nFor this, the user must first define\
    \ an environment\nvariable called RSA_LOCAL_CONFIG, and indicating the\nabsolute\
    \ path of the local config file.\nE.g.\nexport RSA_LOCAL_CONFIG=/home/fred/RSA.local.config\n\
    When install-organism is called with the option\n-local, the new organism is added\
    \ to the file\nindicated by the environment variable RSA_LOCAL_CONFIG\nrather\
    \ than the main RSA config file."
  type: boolean
  inputBinding:
    prefix: -local
- id: in_syn
  doc: "synonym table\nA tab-delimited file containing two coloumns. The\nforst column\
    \ contains a gene ID, the second a gene\nname."
  type: boolean
  inputBinding:
    prefix: -syn
- id: in_up_from
  doc: limit of the upstream regions (e.g. -800 for yeast)
  type: long
  inputBinding:
    prefix: -up_from
- id: in_up_to
  doc: proximal limit of the upstream regions (e.g. -1)
  type: boolean
  inputBinding:
    prefix: -up_to
- id: in_genbank
  doc: directory (obsolete, see refseq)
  type: Directory
  inputBinding:
    prefix: -genbank
- id: in_pref_id
  doc: "idname\npassed to parse-genbank.pl"
  type: string
  inputBinding:
    prefix: -prefid
- id: in_date
  doc: "Force the 'last_update' attribute to a given date.\nThis option is used by\
    \ download-organism to ensure\nthat the local genome has the same installation\
    \ date\nas the server, rather than using the date of download\nas update date."
  type: string
  inputBinding:
    prefix: -date
- id: in_ensembl
  doc: "ENSEMBL directory. Directory containing the ENSEMBL\nflat files in Genbank\
    \ format (ext .dat)\nExample:\nftp.ensembl.org/pub/current_worm/data/flatfiles/genbank"
  type: boolean
  inputBinding:
    prefix: -ensembl
- id: in_task
  doc: specification of a single installation task
  type: boolean
  inputBinding:
    prefix: -task
- id: in_rm
  doc: "calibrate oligo and dyad frequncies on repeat masked\nsequences, in addition\
    \ to the non-masked sequences."
  type: boolean
  inputBinding:
    prefix: -rm
- id: in_img_format
  doc: image format for the graphs of sequence length distribution
  type: boolean
  inputBinding:
    prefix: -img_format
- id: in_download_one_species
  doc: "Download one species with rsync:\ninstall-organism -v 1  -group [GROUP] -species\
    \ [SPECIES]\n-task download\nParse the genome for a given species, and declare\
    \ it in RSAT\nsupported organism. NOTE: this installs all the strains for the\n\
    selected species. For some species this can represent thousands of\nstrains (e.g.\
    \ Eschrichia coli). Strains can be restricted with the\noptions -strain or -max_strains.\n\
    install-organism -v 1  -group [GROUP] -species [SPECIES]\n-task parse,config\n\
    Run the default installation steps for a given species. Note: the\noption -list\
    \ is required in order to collect the organism names,\nwhich are made by concatenating\
    \ species and strain\ninstall-organism -v 1  -group [GROUP] -species [SPECIES]\n\
    -task list,default\nInstallation can be automated and parallelized with a job\n\
    scheduler (e.g. qsub) in order to install all the species of a\ngiven group.\n\
    Example: install all species of the group \"fungi\" at NCBI.\nStep 1: get the\
    \ list of species available at NCBI\ninstall-organism -v 1 -group fungi -task\
    \ available\n-o fungi_available_species.txt\nStep 2: download genome for all the\
    \ strains of these\nspecies. Beware, this takes space, there are several hundreds\
    \ of\nspecies.\ninstall-organism -v 1 -group fungi -task download\n-species_file\
    \ fungi_available_species.txt\nStep 3: parse the genomes of all strains for each\
    \ fungal species.\ninstall-organism -v 1 -group fungi -task parse,config\n-species_file\
    \ fungi_available_species.txt\nStep 4: collect the list of downloaded organisms.\
    \ Organism names\nare built by concatenating species and strain names.\ninstall-organism\
    \ -v 1 -group fungi\n-species_file fungi_available_species.txt\n-task list\n-o\
    \ fungi_downloaded_orgnanisms.txt\nStep 5: extract fasta sequences for different\
    \ types of genomic\nregions, and run some control tests (e.g. oligonucleotide\n\
    frequencies of start and stop codons). With the option -batch, the\ntasks are\
    \ sent to a job scheuler (qsub) in order to be executed in\nparallel.\ninstall-organism\
    \ -v 1\n-org_file fungi_downloaded_orgnanisms.txt\n-task start_stop,allup,seq_len_distrib,genome_segments\n\
    -task protein_len,fasta_genome,fasta_genome_rm\n-task chrom_sizes,index_bedtools\n\
    -batch\nStep 6: compute the oligomer frequency tables. In batch mode, this\ntask\
    \ can be done only after the previous job list is finished,\nbecause of the dependencies\
    \ between the parallelized tasks\n(upstream sequences have to be computed before\
    \ computing their\noligonucleotide and dyad frequencies).\ninstall-organism -v\
    \ 1\n-org_file fungi_downloaded_orgnanisms.txt\n-task upstream_freq,genome_freq,protein_freq,oligos,dyads\n\
    -batch"
  type: long
  inputBinding:
    prefix: -o
- id: in_install_organism
  doc: AUTHOR
  type: string
  inputBinding:
    position: 0
- id: in_parse_slash_install_dot
  doc: This option avoids filling disk with
  type: string
  inputBinding:
    position: 0
- id: in_list_dot
  doc: -organism Full name of the organism (e.g. 'Saccharomyces
  type: string
  inputBinding:
    position: 0
- id: in_e_dot_gdot
  doc: install-organism -task dyads
  type: string
  inputBinding:
    position: 0
- id: in_available
  doc: "list available species on the NCBI FTP site.\nThis task cannot be combine\
    \ with any\nother task."
  type: string
  inputBinding:
    position: 0
- id: in_download
  doc: "download genome from the NCBI FTP site\n(ftp://ftp.ncbi.nih.gov/genomes/refseq/)\n\
    via the rsync protocol."
  type: string
  inputBinding:
    position: 1
- id: in_list
  doc: "print the list of downloaded strains for the\nuser-specified species."
  type: string
  inputBinding:
    position: 2
- id: in_parse
  doc: "parse genome data (sequence, features) from \ngenbank-formatted flat files\
    \ (gbff)\ndownloaded from NCBI. Parsing is ensured\nby the program parse-genbank.pl."
  type: string
  inputBinding:
    position: 3
- id: in_update_configuration_file
  doc: update configuration file
  type: string
  inputBinding:
    position: 4
- id: in_start_stop
  doc: calculate start and stop codon
  type: string
  inputBinding:
    position: 5
- id: in_frequencies
  doc: allup        retrieve all upstream sequences
  type: string
  inputBinding:
    position: 6
- id: in_genome_segments
  doc: "retrieve sequences and limits of genome segments\n(intergenic, genic)"
  type: string
  inputBinding:
    position: 7
- id: in_oligos
  doc: "calculate oligonucleotide frequencies\nThis task requires to specify, in\n\
    addition, the type(s) of sequences for\nwhich oligo frequencies have to be\ncalculated\
    \ (upstream_freq,\nintergenic_freq, genome_freq)."
  type: string
  inputBinding:
    position: 8
- id: in_dyads
  doc: "calculate dyad frequencies\nThis task requires to specify, in\naddition, the\
    \ type(s) of sequences for\nwhich dyad frequencies have to be\ncalculated (upstream_freq,\n\
    intergenic_freq, genome_freq)."
  type: string
  inputBinding:
    position: 9
- id: in_ncf
  doc: "calculate oligo and dyad frequencies in\nintergenic segments"
  type: string
  inputBinding:
    position: 10
- id: in_upstream_freq
  doc: "calculate oligo and dyad frequencies for\nall upstream sequences"
  type: string
  inputBinding:
    position: 11
- id: in_intergenic_freq
  doc: "calculate oligo and dyad frequencies for\nall intergenic sequences"
  type: string
  inputBinding:
    position: 12
- id: in_genome_freq
  doc: "calculate oligo and dyad frequencies for\nthe whole genome sequence. This\
    \ is not\nrecommended for higher organisms, where\nthe genome represents several\
    \ Gigabases,\nand the computation of all oligo and dyad\nfrequencies might take\
    \ ages."
  type: string
  inputBinding:
    position: 13
- id: in_clean
  doc: remove unnecessary sequence files
  type: string
  inputBinding:
    position: 14
- id: in_download_organisms
  doc: "The program I<install-organism> performs all the formatting\nand calibration\
    \ tasks for importing genomes from the reference\ndatabases (NCBI, EMBL) to RSAT.\n\
    The program I<download-organism> transfers the RSAT-formatted\ngenomes from a\
    \ RSAT server.\nIf a genome is available on the RSAT server, it is recommended\n\
    to use download-genomes in order to obtain it immediately in\nthe RSAT format,\
    \ rather than install-genomes.\n"
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
cwlVersion: v1.1
baseCommand:
- rsat
- install-organism
