version 1.0

task CATContigs {
  input {
    Boolean? _contigsfastapath_contigs
    Boolean? _databasefolderpath_folder
    Boolean? _taxonomyfolderpath_folder
    Boolean? _range_r
    Boolean? _fraction_f
    Boolean? _outprefix_prefix
    Boolean? _proteinsfastapath_predicted
    Boolean? _diamondalignmentpath_table
    Boolean? path_to_prodigal
    Boolean? force
    Boolean? quiet
    Boolean? verbose
    Boolean? no_log
    Boolean? i_know_what_im_doing
    Boolean? _nproc_number
    Boolean? sensitive
    Boolean? block_size
    Boolean? index_chunks
    Directory? tmpdir
    Boolean? compress
    Boolean? top
    String prodigal_dot
    String diamond_dot
  }
  command <<<
    CAT contigs \
      ~{prodigal_dot} \
      ~{diamond_dot} \
      ~{if (_contigsfastapath_contigs) then "-c" else ""} \
      ~{if (_databasefolderpath_folder) then "-d" else ""} \
      ~{if (_taxonomyfolderpath_folder) then "-t" else ""} \
      ~{if (_range_r) then "-r" else ""} \
      ~{if (_fraction_f) then "-f" else ""} \
      ~{if (_outprefix_prefix) then "-o" else ""} \
      ~{if (_proteinsfastapath_predicted) then "-p" else ""} \
      ~{if (_diamondalignmentpath_table) then "-a" else ""} \
      ~{if (path_to_prodigal) then "--path_to_prodigal" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_log) then "--no_log" else ""} \
      ~{if (i_know_what_im_doing) then "--I_know_what_Im_doing" else ""} \
      ~{if (_nproc_number) then "-n" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (block_size) then "--block_size" else ""} \
      ~{if (index_chunks) then "--index_chunks" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (top) then "--top" else ""}
  >>>
  parameter_meta {
    _contigsfastapath_contigs: ", --contigs_fasta\\nPath to contigs fasta file."
    _databasefolderpath_folder: ", --database_folder\\nPath to folder that contains database files."
    _taxonomyfolderpath_folder: ", --taxonomy_folder\\nPath to folder that contains taxonomy files."
    _range_r: ", --range          r parameter [0-49] (default: 10)."
    _fraction_f: ", --fraction       f parameter [0-0.99] (default: 0.5)."
    _outprefix_prefix: ", --out_prefix     Prefix for output files (default: out.CAT)."
    _proteinsfastapath_predicted: ", --proteins_fasta\\nPath to predicted proteins fasta file. If supplied,\\nCAT will skip the protein prediction step."
    _diamondalignmentpath_table: ", --diamond_alignment\\nPath to alignment table. If supplied, CAT will skip\\nthe alignment step and directly classify the contigs.\\nA predicted proteins fasta file should also be\\nsupplied with argument [-p / --proteins]."
    path_to_prodigal: "Path to Prodigal binaries. Supply if CAT can not find"
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
    verbose: "Increase verbosity."
    no_log: "Suppress log file."
    i_know_what_im_doing: "Flag for experimental features."
    _nproc_number: ", --nproc          Number of cores to deploy by DIAMOND (default:\\nmaximum)."
    sensitive: "Run DIAMOND in sensitive mode (default: not enabled)."
    block_size: "DIAMOND block-size parameter (default: 2.0). Lower\\nnumbers will decrease memory and temporary disk space\\nusage."
    index_chunks: "DIAMOND index-chunks parameter (default: 4). Set to 1\\non high memory machines. The parameter has no effect\\non temporary disk space usage."
    tmpdir: "Directory for temporary DIAMOND files (default:\\ndirectory to which output files are written)."
    compress: "Compress DIAMOND alignment file."
    top: "DIAMOND top parameter [0-50] (default: 50). Governs\\nhits within range of best hit that are written to the\\nalignment file. This is not the [-r / --range]\\nparameter! Can only be set with the\\n[--I_know_what_Im_doing] flag, see README.md.\\n"
    prodigal_dot: "--path_to_diamond     Path to DIAMOND binaries. Supply if CAT can not find"
    diamond_dot: "--no_stars            Suppress marking of suggestive classifications."
  }
  output {
    File out_stdout = stdout()
    Directory out_tmpdir = "${in_tmpdir}"
  }
}