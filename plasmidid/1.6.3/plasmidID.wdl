version 1.0

task PlasmidID {
  input {
    Boolean? one
    Boolean? two
    Boolean? _database_filename
    Boolean? _sample_string
    Boolean? _group_string
    Boolean? _contigs_filename
    Boolean? _annotate_filename
    Directory? outputdir_output_directory
    Boolean? explore
    Boolean? only_reconstruct
    Boolean? undo_winner_takes
    Directory? trim_mo_matic_directory
    Boolean? no_trim
    Boolean? _coveragecutoff_int
    Boolean? _coveragesummary_int
    Boolean? _cluster_int
    Boolean? _kmer_int
    Boolean? _alignmentidentity_minimun
    Boolean? _alignmentpercentage_minimun
    Boolean? _lengthtotal_int
    Int? extend_annotation
    Directory? config_directory
    File? config_file_individual
    Boolean? _memory_max
    Boolean? _threads_int
    Boolean? _version_version
  }
  command <<<
    plasmidID \
      ~{if (one) then "-1" else ""} \
      ~{if (two) then "-2" else ""} \
      ~{if (_database_filename) then "-d" else ""} \
      ~{if (_sample_string) then "-s" else ""} \
      ~{if (_group_string) then "-g" else ""} \
      ~{if (_contigs_filename) then "-c" else ""} \
      ~{if (_annotate_filename) then "-a" else ""} \
      ~{if (outputdir_output_directory) then "-o" else ""} \
      ~{if (explore) then "--explore" else ""} \
      ~{if (only_reconstruct) then "--only-reconstruct" else ""} \
      ~{if (undo_winner_takes) then "-w" else ""} \
      ~{if defined(trim_mo_matic_directory) then ("--trimmomatic-directory " +  '"' + trim_mo_matic_directory + '"') else ""} \
      ~{if (no_trim) then "--no-trim" else ""} \
      ~{if (_coveragecutoff_int) then "-C" else ""} \
      ~{if (_coveragesummary_int) then "-S" else ""} \
      ~{if (_cluster_int) then "-f" else ""} \
      ~{if (_kmer_int) then "-k" else ""} \
      ~{if (_alignmentidentity_minimun) then "-i" else ""} \
      ~{if (_alignmentpercentage_minimun) then "-l" else ""} \
      ~{if (_lengthtotal_int) then "-L" else ""} \
      ~{if defined(extend_annotation) then ("--extend-annotation " +  '"' + extend_annotation + '"') else ""} \
      ~{if defined(config_directory) then ("--config-directory " +  '"' + config_directory + '"') else ""} \
      ~{if defined(config_file_individual) then ("--config-file-individual " +  '"' + config_file_individual + '"') else ""} \
      ~{if (_memory_max) then "-M" else ""} \
      ~{if (_threads_int) then "-T" else ""} \
      ~{if (_version_version) then "-v" else ""}
  >>>
  parameter_meta {
    one: "| --R1       <filename>      reads corresponding to paired-end R1 (mandatory)"
    two: "| --R2       <filename>      reads corresponding to paired-end R2 (mandatory)"
    _database_filename: "| --database <filename>      database to map and reconstruct (mandatory)"
    _sample_string: "| --sample   <string>        sample name (mandatory), less than 37 characters"
    _group_string: "| --group    <string>        group name (optional). If unset, samples will be gathered in NO_GROUP group"
    _contigs_filename: "| --contigs  <filename>      file with contigs. If supplied, plasmidID will not assembly reads"
    _annotate_filename: "| --annotate <filename>      file with configuration file for specific annotation"
    outputdir_output_directory: "<output_dir>    output directory, by default is the current directory"
    explore: "Relaxes default parameters to find less reliable relationships within data supplied and database"
    only_reconstruct: "Database supplied will not be filtered and all sequences will be used as scaffold\\nThis option does not require R1 and R2, instead a contig file can be supplied"
    undo_winner_takes: "Undo winner takes it all algorithm when clustering by kmer - QUICKER MODE"
    trim_mo_matic_directory: "directory holding trimmomatic .jar executable"
    no_trim: "Reads supplied will not be quality trimmed"
    _coveragecutoff_int: "| --coverage-cutoff  <int>   minimun coverage percentage to select a plasmid as scafold (0-100), default 80"
    _coveragesummary_int: "| --coverage-summary <int>   minimun coverage percentage to include plasmids in summary image (0-100), default 90"
    _cluster_int: "| --cluster  <int>   kmer identity to cluster plasmids into the same representative sequence (0 means identical) (0-1), default 0.5"
    _kmer_int: "| --kmer     <int>   identity to filter plasmids from the database with kmer approach (0-1), default 0.95"
    _alignmentidentity_minimun: "| --alignment-identity <int> minimun identity percentage aligned for a contig to annotate, default 90"
    _alignmentpercentage_minimun: "| --alignment-percentage <int>       minimun length percentage aligned for a contig to annotate, default 20"
    _lengthtotal_int: "| --length-total     <int>   minimun alignment length to filter blast analysis"
    extend_annotation: "look for annotation over regions with no homology found (base pairs), default 500bp"
    config_directory: "directory holding config files, default config_files/"
    config_file_individual: "file name of the individual file used to reconstruct"
    _memory_max: "| --memory   <int>   max memory allowed to use"
    _threads_int: "| --threads  <int>   number of threads"
    _version_version: "| --version          version"
  }
  output {
    File out_stdout = stdout()
    Directory out_outputdir_output_directory = "${in_outputdir_output_directory}"
  }
}