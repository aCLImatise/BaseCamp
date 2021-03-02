version 1.0

task CATBins {
  input {
    Boolean? bin_folder
    Boolean? database_folder
    Boolean? taxonomy_folder
    Boolean? bin_suffix
    Boolean? range
    Boolean? out_prefix
    Boolean? proteins_fast_a
    Boolean? diamond_alignment
    Boolean? path_to_prodigal
    Boolean? path_to_diamond
    Boolean? no_stars
    Boolean? force
    Boolean? quiet
    Boolean? verbose
    Boolean? no_log
    Boolean? i_know_what_im_doing
    Boolean? nproc
    Boolean? sensitive
    Boolean? no_self_hits
    Boolean? block_size
    Boolean? index_chunks
    Directory? tmpdir
    Boolean? compress
    Boolean? top
  }
  command <<<
    CAT bins \
      ~{if (bin_folder) then "--bin_folder" else ""} \
      ~{if (database_folder) then "--database_folder" else ""} \
      ~{if (taxonomy_folder) then "--taxonomy_folder" else ""} \
      ~{if (bin_suffix) then "--bin_suffix" else ""} \
      ~{if (range) then "--range" else ""} \
      ~{if (out_prefix) then "--out_prefix" else ""} \
      ~{if (proteins_fast_a) then "--proteins_fasta" else ""} \
      ~{if (diamond_alignment) then "--diamond_alignment" else ""} \
      ~{if (path_to_prodigal) then "--path_to_prodigal" else ""} \
      ~{if (path_to_diamond) then "--path_to_diamond" else ""} \
      ~{if (no_stars) then "--no_stars" else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if (quiet) then "--quiet" else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (no_log) then "--no_log" else ""} \
      ~{if (i_know_what_im_doing) then "--I_know_what_Im_doing" else ""} \
      ~{if (nproc) then "--nproc" else ""} \
      ~{if (sensitive) then "--sensitive" else ""} \
      ~{if (no_self_hits) then "--no_self_hits" else ""} \
      ~{if (block_size) then "--block_size" else ""} \
      ~{if (index_chunks) then "--index_chunks" else ""} \
      ~{if (tmpdir) then "--tmpdir" else ""} \
      ~{if (compress) then "--compress" else ""} \
      ~{if (top) then "--top" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/cat:5.2.3--0"
  }
  parameter_meta {
    bin_folder: "Path to directory containing bins."
    database_folder: "Path to folder that contains database files."
    taxonomy_folder: "Path to folder that contains taxonomy files."
    bin_suffix: "Suffix of bins in bin folder (default: .fna)."
    range: "r parameter [0-49] (default: 5)."
    out_prefix: "Prefix for output files (default: ./out.BAT)."
    proteins_fast_a: "Path to concatenated predicted proteins fasta file\\ngenerated during an earlier run of BAT on the same\\nbins. If supplied, BAT will skip the protein\\nprediction step."
    diamond_alignment: "Path to alignment table generated during an earlier\\nrun of BAT on the same bins. If supplied, BAT will\\nskip the alignment step and directly classify the\\nbins. A concatenated predicted proteins fasta file\\nshould also be supplied with argument [-p /\\n--proteins]."
    path_to_prodigal: "Path to Prodigal binaries. Supply if CAT/BAT cannot\\nfind Prodigal"
    path_to_diamond: "Path to DIAMOND binaries. Supply if CAT/BAT cannot\\nfind DIAMOND."
    no_stars: "Suppress marking of suggestive taxonomic assignments."
    force: "Force overwrite existing files."
    quiet: "Suppress verbosity."
    verbose: "Increase verbosity."
    no_log: "Suppress log file."
    i_know_what_im_doing: "Flag for experimental features."
    nproc: "Number of cores to deploy by DIAMOND (default:\\nmaximum)."
    sensitive: "Run DIAMOND in sensitive mode (default: not enabled)."
    no_self_hits: "Do not report identical self hits by DIAMOND (default:\\nnot enabled)."
    block_size: "DIAMOND block-size parameter (default: 2.0). Lower\\nnumbers will decrease memory and temporary disk space\\nusage."
    index_chunks: "DIAMOND index-chunks parameter (default: 4). Set to 1\\non high memory machines. The parameter has no effect\\non temporary disk space usage."
    tmpdir: "Directory for temporary DIAMOND files (default:\\ndirectory to which output files are written)."
    compress: "Compress DIAMOND alignment file (default: not\\nenabled)."
    top: "DIAMOND top parameter [0-50] (default: 50). Governs\\nhits within range of best hit that are written to the\\nalignment file. This is not the [-r / --range]\\nparameter! Can only be set with the\\n[--I_know_what_Im_doing] flag, see README.md.\\n"
  }
  output {
    File out_stdout = stdout()
    Directory out_tmpdir = "${in_tmpdir}"
  }
}