version 1.0

task CATBin {
  input {
    Boolean? bin_fast_a
    Boolean? database_folder
    Boolean? taxonomy_folder
    Boolean? range
    Boolean? out_prefix
    Boolean? proteins_fast_a
    Boolean? diamond_alignment
    Boolean? path_to_prodigal
    Boolean? force
    Boolean? quiet
    Boolean? verbose
    Boolean? no_log
    Boolean? i_know_what_im_doing
    Boolean? nproc
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
    CAT bin \
      ~{prodigal_dot} \
      ~{diamond_dot} \
      ~{if (bin_fast_a) then "--bin_fasta" else ""} \
      ~{if (database_folder) then "--database_folder" else ""} \
      ~{if (taxonomy_folder) then "--taxonomy_folder" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (out_prefix) then "--out_prefix" else ""} \
      ~{if (proteins_fast_a) then "--proteins_fasta" else ""} \
      ~{if (diamond_alignment) then "--diamond_alignment" else ""} \
      ~{if (path_to_prodigal) then "--path_to_prodigal" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_log) then "--no_log" else ""} \
      ~{if (i_know_what_im_doing) then "--I_know_what_Im_doing" else ""} \
      ~{if (nproc) then "--nproc" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (block_size) then "--block_size" else ""} \
      ~{if (index_chunks) then "--index_chunks" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (top) then "--top" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bin_fast_a: "Path to bin fasta file."
    database_folder: "Path to folder that contains database files."
    taxonomy_folder: "Path to folder that contains taxonomy files."
    range: "r parameter [0-49] (default: 5)."
    out_prefix: "Prefix for output files (default: out.BAT)."
    proteins_fast_a: "Path to predicted proteins fasta file. If supplied,\\nBAT will skip the protein prediction step."
    diamond_alignment: "Path to alignment table. If supplied, BAT will skip\\nthe alignment step and directly classify the bin. A\\npredicted proteins fasta file should also be supplied\\nwith argument [-p / --proteins]."
    path_to_prodigal: "Path to Prodigal binaries. Supply if BAT can not find"
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
    verbose: "Increase verbosity."
    no_log: "Suppress log file."
    i_know_what_im_doing: "Flag for experimental features."
    nproc: "Number of cores to deploy by DIAMOND (default:\\nmaximum)."
    sensitive: "Run DIAMOND in sensitive mode (default: not enabled)."
    block_size: "DIAMOND block-size parameter (default: 2.0). Lower\\nnumbers will decrease memory and temporary disk space\\nusage."
    index_chunks: "DIAMOND index-chunks parameter (default: 4). Set to 1\\non high memory machines. The parameter has no effect\\non temporary disk space usage."
    tmpdir: "Directory for temporary DIAMOND files (default:\\ndirectory to which output files are written)."
    compress: "Compress DIAMOND alignment file."
    top: "DIAMOND top parameter [0-50] (default: 50). Governs\\nhits within range of best hit that are written to the\\nalignment file. This is not the [-r / --range]\\nparameter! Can only be set with the\\n[--I_know_what_Im_doing] flag, see README.md.\\n"
    prodigal_dot: "--path_to_diamond     Path to DIAMOND binaries. Supply if BAT can not find"
    diamond_dot: "--no_stars            Suppress marking of suggestive classifications."
  }
  output {
    File out_stdout = stdout()
    Directory out_tmpdir = "${in_tmpdir}"
  }
}