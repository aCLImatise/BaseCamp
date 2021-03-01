version 1.0

task TOBIASTFBScan {
  input {
    Boolean? motifs
    Boolean? fast_a
    Boolean? regions
    File? outdir
    File? outfile
    Boolean? naming
    Boolean? gc
    Boolean? p_value
    Boolean? keep_overlaps
    Boolean? add_region_columns
    Int? verbosity
    Int? split
    Boolean? cores
  }
  command <<<
    TOBIAS TFBScan \
      ~{if (motifs) then "--motifs" else ""} \
      ~{if (fast_a) then "--fasta" else ""} \
      ~{if (regions) then "--regions" else ""} \
      ~{if (outdir) then "--outdir" else ""} \
      ~{if (outfile) then "--outfile" else ""} \
      ~{if (naming) then "--naming" else ""} \
      ~{if (gc) then "--gc" else ""} \
      ~{if (p_value) then "--pvalue" else ""} \
      ~{if (keep_overlaps) then "--keep-overlaps" else ""} \
      ~{if (add_region_columns) then "--add-region-columns" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{if (cores) then "--cores" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/tobias:0.12.9--py36h29c9776_0"
  }
  parameter_meta {
    motifs: "File containing motifs in either MEME, PFM or JASPAR format"
    fast_a: "A fasta file of sequences to use for scanning motifs"
    regions: "Subset scanning to regions of interest"
    outdir: "Output directory for TFBS sites in one file per motif (default:\\n./tfbscan_output/). NOTE: Select either --outdir or --outfile."
    outfile: "Output file for TFBS sites joined in one bed-file (default: not\\nset). NOTE: Select either --outdir or --outfile."
    naming: "Naming convention for bed-ids and output files ('id', 'name',\\n'name_id', 'id_name') (default: 'name_id')"
    gc: "Set the gc content for background regions (default: will be\\nestimated from fasta)"
    p_value: "Set p-value for motif matches (default: 0.0001)"
    keep_overlaps: "Keep overlaps of same motifs (default: overlaps are resolved by\\nkeeping best-scoring site)"
    add_region_columns: "Add extra information columns (starting from 4th column) from"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info,\\n3: stats, 4: debug, 5: spam) (default: 3)"
    split: "Split of multiprocessing jobs (default: 100)"
    cores: "Number of cores to use (default: 1)"
  }
  output {
    File out_stdout = stdout()
    File out_outdir = "${in_outdir}"
    File out_outfile = "${in_outfile}"
  }
}