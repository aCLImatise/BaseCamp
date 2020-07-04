version 1.0

task TOBIASTFBScan {
  input {
    Boolean? _motifs_file
    Boolean? _fasta_file
    Boolean? _regions_scanning
    Boolean? outdir
    Boolean? outfile
    Boolean? naming
    Boolean? gc
    Boolean? p_value
    Boolean? keep_overlaps
    Boolean? add_region_columns
    Int? verbosity
    Int? split
    Boolean? cores
    String? motifs
    String? fast_a
  }
  command <<<
    TOBIAS TFBScan \
      ~{true="-m" false="" _motifs_file} \
      ~{true="-f" false="" _fasta_file} \
      ~{true="-r" false="" _regions_scanning} \
      ~{true="--outdir" false="" outdir} \
      ~{true="--outfile" false="" outfile} \
      ~{true="--naming" false="" naming} \
      ~{true="--gc" false="" gc} \
      ~{true="--pvalue" false="" p_value} \
      ~{true="--keep-overlaps" false="" keep_overlaps} \
      ~{true="--add-region-columns" false="" add_region_columns} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(split) then ("--split " +  '"' + split + '"') else ""} \
      ~{true="--cores" false="" cores} \
      ~{if defined(motifs) then ("--motifs " +  '"' + motifs + '"') else ""} \
      ~{if defined(fast_a) then ("--fasta " +  '"' + fast_a + '"') else ""}
  >>>
  parameter_meta {
    _motifs_file: ", --motifs         File containing motifs in either MEME, PFM or JASPAR format"
    _fasta_file: ", --fasta          A fasta file of sequences to use for scanning motifs"
    _regions_scanning: ", --regions        Subset scanning to regions of interest"
    outdir: "Output directory for TFBS sites in one file per motif (default: ./tfbscan_output/). NOTE: Select either --outdir or --outfile."
    outfile: "Output file for TFBS sites joined in one bed-file (default: not set). NOTE: Select either --outdir or --outfile."
    naming: "Naming convention for bed-ids and output files ('id', 'name', 'name_id', 'id_name') (default: 'name_id')"
    gc: "Set the gc content for background regions (default: will be estimated from fasta)"
    p_value: "Set p-value for motif matches (default: 0.0001)"
    keep_overlaps: "Keep overlaps of same motifs (default: overlaps are resolved by keeping best-scoring site)"
    add_region_columns: "Add extra information columns (starting from 4th column) from --regions to the output .bed-file(s) (default: off)"
    verbosity: "Level of output logging (0: silent, 1: errors/warnings, 2: info, 3: stats, 4: debug, 5: spam) (default: 3)"
    split: "Split of multiprocessing jobs (default: 100)"
    cores: "Number of cores to use (default: 1)"
    motifs: ""
    fast_a: ""
  }
}