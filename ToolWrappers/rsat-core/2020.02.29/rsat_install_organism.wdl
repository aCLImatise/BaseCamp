version 1.0

task RsatInstallorganism {
  input {
    Boolean? help
    Boolean? verbose
    Boolean? org
    File? org_file
    Boolean? all_organisms
    Boolean? tax_on
    String? group
    Int? species
    File? species_file
    String? strain
    Boolean? assembly_table
    Boolean? refseq
    Boolean? skip
    Boolean? skip_species
    Boolean? last
    Boolean? last_species
    String? source
    File? dir
    String? batch
    Boolean? queue
    Boolean? specify_alternative_file
    Boolean? backup_org_table
    Boolean? local
    Boolean? syn
    Int? up_from
    Boolean? up_to
    Directory? genbank
    String? pref_id
    String? date
    Boolean? ensembl
    Boolean? specification_single_installation
    Boolean? rm
    Boolean? img_format
    String install_organism
    String list_dot
    String e_dot_gdot
    String available
    String download
    String list
    String parse
    String update_configuration_file
    String start_stop
    String frequencies
    String genome_segments
    String oligos
    String dyads
    String ncf
    String upstream_freq
    String intergenic_freq
    String genome_freq
    String clean
    String species_dot
    String parallel_dot
    String download_organisms
  }
  command <<<
    rsat install_organism \
      ~{install_organism} \
      ~{list_dot} \
      ~{e_dot_gdot} \
      ~{available} \
      ~{download} \
      ~{list} \
      ~{parse} \
      ~{update_configuration_file} \
      ~{start_stop} \
      ~{frequencies} \
      ~{genome_segments} \
      ~{oligos} \
      ~{dyads} \
      ~{ncf} \
      ~{upstream_freq} \
      ~{intergenic_freq} \
      ~{genome_freq} \
      ~{clean} \
      ~{species_dot} \
      ~{parallel_dot} \
      ~{download_organisms} \
      ~{if (help) then "-help" else ""} \
      ~{if (verbose) then "-v" else ""} \
      ~{if (org) then "-org" else ""} \
      ~{if defined(org_file) then ("-org_file " +  '"' + org_file + '"') else ""} \
      ~{if (all_organisms) then "-all_organisms" else ""} \
      ~{if (tax_on) then "-taxon" else ""} \
      ~{if defined(group) then ("-group " +  '"' + group + '"') else ""} \
      ~{if defined(species) then ("-species " +  '"' + species + '"') else ""} \
      ~{if defined(species_file) then ("-species_file " +  '"' + species_file + '"') else ""} \
      ~{if defined(strain) then ("-strain " +  '"' + strain + '"') else ""} \
      ~{if (assembly_table) then "-assembly_table" else ""} \
      ~{if (refseq) then "-refseq" else ""} \
      ~{if (skip) then "-skip" else ""} \
      ~{if (skip_species) then "-skip_species" else ""} \
      ~{if (last) then "-last" else ""} \
      ~{if (last_species) then "-last_species" else ""} \
      ~{if defined(source) then ("-source " +  '"' + source + '"') else ""} \
      ~{if defined(dir) then ("-dir " +  '"' + dir + '"') else ""} \
      ~{if defined(batch) then ("-batch " +  '"' + batch + '"') else ""} \
      ~{if (queue) then "-queue" else ""} \
      ~{if (specify_alternative_file) then "-config" else ""} \
      ~{if (backup_org_table) then "-backup_org_table" else ""} \
      ~{if (local) then "-local" else ""} \
      ~{if (syn) then "-syn" else ""} \
      ~{if defined(up_from) then ("-up_from " +  '"' + up_from + '"') else ""} \
      ~{if (up_to) then "-up_to" else ""} \
      ~{if defined(genbank) then ("-genbank " +  '"' + genbank + '"') else ""} \
      ~{if defined(pref_id) then ("-prefid " +  '"' + pref_id + '"') else ""} \
      ~{if defined(date) then ("-date " +  '"' + date + '"') else ""} \
      ~{if (ensembl) then "-ensembl" else ""} \
      ~{if (specification_single_installation) then "-task" else ""} \
      ~{if (rm) then "-rm" else ""} \
      ~{if (img_format) then "-img_format" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "(must be first argument) display options"
    verbose: "verbose"
    org: "organism name without spaces (e.g. Saccharomyces_cerevisiae)\\nThe option -org can be used iteratively on the same\\ncommand line to iterate the installation over multiple\\norganisms."
    org_file: "Text file containing a list of organisms to install.\\nThe first word of each row is taken as a query\\norgnanism. Further information of the same row is\\nignored."
    all_organisms: "Install all the organisms found in the Refseq\\ndirectory (see option -refseq)."
    tax_on: "taxon name (mutually exclusive with -org)\\nThe installation will iterate over all organisms of\\nthe selected taxon. Note that the command will only\\napply to the organisms previously declared with the\\ncommand install-organism -task config. The option\\n-taxon is thus convenient for re-running installation\\ntasks on previously installed organisms rather than\\nfor installing new genomes downloaded e.g. from NCBI.\\nThe option -taxon can be used iteratively on the same\\ncommand line to iterate the installation over multiple\\ntaxa."
    group: "group according to the NCBI/Refseq ftp/rsync\\nsite (ftp://ftp.ncbi.nlm.nih.gov/genomes/refseq).\\nExamples: bacteria, fungi, protozoa, plant,\\ninvertebrate, vertebrate_mammalian, vertebrate_other"
    species: "name, with space replaced by underscore\\n(e.g. Saccharomyces_cerevisiae).\\nNote that one species may correspond to several\\norganisms if several strains are available for this\\nspecies. In particular, for some bacteria there are\\nseveral thousands of sequenced strains\\n(e.g. Escherichia coli).\\nThe option -max_strains can be used to restrict the\\nnumber of installed strains per species.\\nAn alternative is to specify a custom list of species\\n+ strains with the option -org_table (this is the\\nrecommended way to install multiple genomes from\\nNCBI)."
    species_file: "containing species names in the first"
    strain: "the download to a single strain or\\nassembly. By default all strains of the selected\\nspecies are downloaded, but this can be heavy for some\\nbacterial species where thousands of strains have been\\nsequenced (e.g. Escherichia coli).\\nNote: the RSAT organism name is automatically built by\\nconcatenating the NCBI species name and strain\\nidentifier."
    assembly_table: "Table extracted from the NCBI ftp site, indicating the\\norganisms to install.\\nExample: assembly table of fungi:\\nftp://ftp.ncbi.nlm.nih.gov/genomes/refseq/fungi/assembly_summary.txt\\nThe table can be the full table for a given group, or\\na custom subset, which can be selected on some\\ninformative fields of the assembly table.\\nWe recommend to select the subset of rows having\\neither \\\"Complete genome\\\" or \\\"Chromosome\\\" in the 12th\\ncolumn (\\\"assembly_level\\\"), and to add a filter on\\n\\\"refseq_category\\\" in order to select \\\"representative\\ngenome\\\" or \\\"reference genome\\\".\\nThe assembly table can also be filtered out manually\\nin order to select a custom subset of the available\\ngenomes."
    refseq: "Local directory containing the mirror of the refseq\\ngenomes found on the NCBI site:\\nftp://ftp.ncbi.nih.gov/genomes/refseq\\nNormally, the refseq directory is specified by\\ndefining a global variable REFSEQ_DIR in the config\\nfile. The option -refseq allows to overwrite this\\nvalue."
    skip: "# Skip the first # organisms of the list.\\nThis option is convenient to resume the installation\\nof a list of organisms, when it has been interrupted.\\nIt also allows to organize the installation by chunks\\nof organisms."
    skip_species: "# skip the first # of the list of NCBI species.\\nNote that one species can correspond to several\\norganisms, if several strains have been sequenced."
    last: "# Stop after the first # organisms of the list.\\nThis option can be used to organize the installation\\nby chunks of organisms."
    last_species: "# Stop after the first # species of the NCBI"
    source: "source"
    dir: "{install}\\nAbsolute path of the installation directory.\\nBEWARE : you should provide the absolute path of the\\ninstallation directory, not the relative path."
    batch: "some tasks (for example the calibration of oligos\\nand dyads) in batch mode.  This options works on our\\nlab cluster, but could be adapted for other\\nconfigurations by adapting the parameters in\\nRSAT_config.props."
    queue: "specify a queue to send the job with the option -batch.\\nOn this instance of RSAT, default queue is rsat\\nType 'qstat -f' to get a list of existing queues."
    specify_alternative_file: "Specify an alternative organism configuration file for the\\ngenome to be installed.\\nBy default, the organism configuration file is\\n$RSAT/public_html/data/genomes/supported_organisms.pl"
    backup_org_table: "Store a backup copy of the organism table before\\noverwriting it."
    local: "Absolute path of a RSA local config file.\\nBy default, the newly installed organism is added to\\nthe main RSA config file is changed (provided the user\\nhas write access to the RSA config file).\\nIn addition to the organisms installed by the RSAT\\nsystem administrator (found in\\n/usr/local/share/rsat/public_html/data/supported_organisms.tab), users can\\ninstall some organisms locally.\\nFor this, the user must first define an environment\\nvariable called RSA_LOCAL_CONFIG, and indicating the\\nabsolute path of the local config file.\\nE.g.\\nexport RSA_LOCAL_CONFIG=/home/fred/RSA.local.config\\nWhen install-organism is called with the option\\n-local, the new organism is added to the file\\nindicated by the environment variable RSA_LOCAL_CONFIG\\nrather than the main RSA config file."
    syn: "synonym table\\nA tab-delimited file containing two coloumns. The\\nforst column contains a gene ID, the second a gene\\nname."
    up_from: "limit of the upstream regions (e.g. -800 for yeast)"
    up_to: "proximal limit of the upstream regions (e.g. -1)"
    genbank: "directory (obsolete, see refseq)"
    pref_id: "idname\\npassed to parse-genbank.pl"
    date: "Force the 'last_update' attribute to a given date.\\nThis option is used by download-organism to ensure\\nthat the local genome has the same installation date\\nas the server, rather than using the date of download\\nas update date."
    ensembl: "ENSEMBL directory. Directory containing the ENSEMBL\\nflat files in Genbank format (ext .dat)\\nExample:\\nftp.ensembl.org/pub/current_worm/data/flatfiles/genbank"
    specification_single_installation: "specification of a single installation task"
    rm: "calibrate oligo and dyad frequncies on repeat masked\\nsequences, in addition to the non-masked sequences."
    img_format: "image format for the graphs of sequence length distribution"
    install_organism: "AUTHOR"
    list_dot: "-organism Full name of the organism (e.g. 'Saccharomyces"
    e_dot_gdot: "install-organism -task dyads"
    available: "list available species on the NCBI FTP site.\\nThis task cannot be combine with any\\nother task."
    download: "download genome from the NCBI FTP site\\n(ftp://ftp.ncbi.nih.gov/genomes/refseq/)\\nvia the rsync protocol."
    list: "print the list of downloaded strains for the\\nuser-specified species."
    parse: "parse genome data (sequence, features) from \\ngenbank-formatted flat files (gbff)\\ndownloaded from NCBI. Parsing is ensured\\nby the program parse-genbank.pl."
    update_configuration_file: "update configuration file"
    start_stop: "calculate start and stop codon"
    frequencies: "allup        retrieve all upstream sequences"
    genome_segments: "retrieve sequences and limits of genome segments\\n(intergenic, genic)"
    oligos: "calculate oligonucleotide frequencies\\nThis task requires to specify, in\\naddition, the type(s) of sequences for\\nwhich oligo frequencies have to be\\ncalculated (upstream_freq,\\nintergenic_freq, genome_freq)."
    dyads: "calculate dyad frequencies\\nThis task requires to specify, in\\naddition, the type(s) of sequences for\\nwhich dyad frequencies have to be\\ncalculated (upstream_freq,\\nintergenic_freq, genome_freq)."
    ncf: "calculate oligo and dyad frequencies in\\nintergenic segments"
    upstream_freq: "calculate oligo and dyad frequencies for\\nall upstream sequences"
    intergenic_freq: "calculate oligo and dyad frequencies for\\nall intergenic sequences"
    genome_freq: "calculate oligo and dyad frequencies for\\nthe whole genome sequence. This is not\\nrecommended for higher organisms, where\\nthe genome represents several Gigabases,\\nand the computation of all oligo and dyad\\nfrequencies might take ages."
    clean: "remove unnecessary sequence files"
    species_dot: "install-organism -v 1 -group fungi -task download "
    parallel_dot: "install-organism -v 1 "
    download_organisms: "The program I<install-organism> performs all the formatting\\nand calibration tasks for importing genomes from the reference\\ndatabases (NCBI, EMBL) to RSAT.\\nThe program I<download-organism> transfers the RSAT-formatted\\ngenomes from a RSAT server.\\nIf a genome is available on the RSAT server, it is recommended\\nto use download-genomes in order to obtain it immediately in\\nthe RSAT format, rather than install-genomes.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}