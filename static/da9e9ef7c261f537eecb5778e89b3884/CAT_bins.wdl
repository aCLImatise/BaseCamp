version 1.0

task CATBins {
  input {
    Boolean? _binfolder_path
    Boolean? _databasefolder_path
    Boolean? _taxonomyfolder_path
    Boolean? _binsuffix_suffix
    Boolean? _range_r
    Boolean? _fraction_f
    Boolean? _outprefix_prefix
    Boolean? _proteinsfasta_path
    Boolean? _diamondalignment_path
    Boolean? path_to_prodigal
    Boolean? path_to_diamond
    Boolean? no_stars
    Boolean? force
    Boolean? quiet
    Boolean? no_log
    Boolean? i_know_what_im_doing
    Boolean? _nproc_number
    Boolean? sensitive
    Boolean? block_size
    Boolean? index_chunks
    Boolean? tmpdir
    Boolean? top
  }
  command <<<
    CAT bins \
      ~{true="-b" false="" _binfolder_path} \
      ~{true="-d" false="" _databasefolder_path} \
      ~{true="-t" false="" _taxonomyfolder_path} \
      ~{true="-s" false="" _binsuffix_suffix} \
      ~{true="-r" false="" _range_r} \
      ~{true="-f" false="" _fraction_f} \
      ~{true="-o" false="" _outprefix_prefix} \
      ~{true="-p" false="" _proteinsfasta_path} \
      ~{true="-a" false="" _diamondalignment_path} \
      ~{true="--path_to_prodigal" false="" path_to_prodigal} \
      ~{true="--path_to_diamond" false="" path_to_diamond} \
      ~{true="--no_stars" false="" no_stars} \
      ~{true="--force" false="" force} \
      ~{true="--quiet" false="" quiet} \
      ~{true="--no_log" false="" no_log} \
      ~{true="--I_know_what_Im_doing" false="" i_know_what_im_doing} \
      ~{true="-n" false="" _nproc_number} \
      ~{true="--sensitive" false="" sensitive} \
      ~{true="--block_size" false="" block_size} \
      ~{true="--index_chunks" false="" index_chunks} \
      ~{true="--tmpdir" false="" tmpdir} \
      ~{true="--top" false="" top}
  >>>
  parameter_meta {
    _binfolder_path: ", --bin_folder     Path to directory containing bins."
    _databasefolder_path: ", --database_folder  Path to folder that contains database files."
    _taxonomyfolder_path: ", --taxonomy_folder  Path to folder that contains taxonomy files."
    _binsuffix_suffix: ", --bin_suffix     Suffix of bins in bin folder (default: .fna)."
    _range_r: ", --range          r parameter [0-49] (default: 5)."
    _fraction_f: ", --fraction       f parameter [0-0.99] (default: 0.3)."
    _outprefix_prefix: ", --out_prefix     Prefix for output files (default: out.BAT)."
    _proteinsfasta_path: ", --proteins_fasta  Path to concatenated predicted proteins fasta file generated during an earlier run of BAT. If supplied, BAT will skip the protein prediction step."
    _diamondalignment_path: ", --diamond_alignment  Path to DIAMOND alignment table generated during an earlier run of BAT. If supplied, BAT will skip the DIAMOND alignment step and directly classify the bins. A concatenated predicted proteins fasta file should also be supplied with argument [-p / --proteins]."
    path_to_prodigal: "Path to Prodigal binaries. Please supply if BAT can not find Prodigal."
    path_to_diamond: "Path to DIAMOND binaries. Please supply if BAT can not find DIAMOND."
    no_stars: "Suppress marking of suggestive classifications."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
    no_log: "Suppress log file."
    i_know_what_im_doing: "Flag for experimental features."
    _nproc_number: ", --nproc          Number of cores to deploy by DIAMOND (default: maximum)."
    sensitive: "Run DIAMOND in sensitive mode (default: not enabled)."
    block_size: "DIAMOND block-size parameter (default: 2.0). Lower numbers will decrease memory and temporary disk space usage."
    index_chunks: "DIAMOND index-chunks parameter (default: 4). Set to 1 on high memory machines. The parameter has no effect on temporary disk space usage."
    tmpdir: "Directory for temporary DIAMOND files (default: directory to which output files are written)."
    top: "DIAMOND top parameter [0-50] (default: 50). Governs hits within range of best hit that are written to the alignment file. This is not the [-r / --range] parameter! Can only be set with the [--I_know_what_Im_doing] flag, see README.md."
  }
}