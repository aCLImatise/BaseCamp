version 1.0

task ICountMan {
  input {
    Boolean? _stdoutlog_threshold
    Boolean? _filelog_threshold
    Boolean? _filelogpath_path
    Boolean? _file_store
    Boolean? _release_release
    Boolean? od
    Boolean? _annotation_filename
    Boolean? genome
    Boolean? chromosomes
    Boolean? report_progress
    Boolean? mis
    Boolean? ml
    Boolean? prefix
    Boolean? qual_trim
    Boolean? overhang
    Boolean? overhang_min
    Boolean? threads
    Boolean? multimax
    Boolean? _groupby_assign
    Boolean? quant
    Boolean? segmentation
    Boolean? mapq_th
    Boolean? gap_th
    Boolean? subtype
    Boolean? excluded_types_default
    Boolean? dist
    Boolean? slop
    File? scores
    Boolean? features
    Boolean? merge_features
    Boolean? half_window
    Boolean? fdr
    Boolean? _perms_number
    Boolean? rnd
    Boolean? implicit_handling
    Boolean? holesize_th
    Boolean? types_length_file
    Boolean? digits
    Boolean? v
  }
  command <<<
    iCount man \
      ~{if (_stdoutlog_threshold) then "-S" else ""} \
      ~{if (_filelog_threshold) then "-F" else ""} \
      ~{if (_filelogpath_path) then "-P" else ""} \
      ~{if (_file_store) then "-M" else ""} \
      ~{if (_release_release) then "-r" else ""} \
      ~{if (od) then "-od" else ""} \
      ~{if (_annotation_filename) then "-a" else ""} \
      ~{if (genome) then "--genome" else ""} \
      ~{if (chromosomes) then "--chromosomes" else ""} \
      ~{if (report_progress) then "--report_progress" else ""} \
      ~{if (mis) then "-mis" else ""} \
      ~{if (ml) then "-ml" else ""} \
      ~{if (prefix) then "--prefix" else ""} \
      ~{if (qual_trim) then "--qual_trim" else ""} \
      ~{if (overhang) then "--overhang" else ""} \
      ~{if (overhang_min) then "--overhang_min" else ""} \
      ~{if (threads) then "--threads" else ""} \
      ~{if (multimax) then "--multimax" else ""} \
      ~{if (_groupby_assign) then "-g" else ""} \
      ~{if (quant) then "--quant" else ""} \
      ~{if (segmentation) then "--segmentation" else ""} \
      ~{if (mapq_th) then "--mapq_th" else ""} \
      ~{if (gap_th) then "--gap_th" else ""} \
      ~{if (subtype) then "--subtype" else ""} \
      ~{if (excluded_types_default) then "-e" else ""} \
      ~{if (dist) then "--dist" else ""} \
      ~{if (slop) then "--slop" else ""} \
      ~{if (scores) then "--scores" else ""} \
      ~{if (features) then "--features" else ""} \
      ~{if (merge_features) then "--merge_features" else ""} \
      ~{if (half_window) then "--half_window" else ""} \
      ~{if (fdr) then "--fdr" else ""} \
      ~{if (_perms_number) then "-p" else ""} \
      ~{if (rnd) then "-rnd" else ""} \
      ~{if (implicit_handling) then "--implicit_handling" else ""} \
      ~{if (holesize_th) then "--holesize_th" else ""} \
      ~{if (types_length_file) then "--types_length_file" else ""} \
      ~{if (digits) then "--digits" else ""} \
      ~{if (v) then "-v" else ""}
  >>>
  parameter_meta {
    _stdoutlog_threshold: ", --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging to stdout if turned OFF."
    _filelog_threshold: ", --file_log       Threshold value (0-50) for logging to file. If 0, logging to file if turned OFF."
    _filelogpath_path: ", --file_logpath   Path to log file."
    _file_store: ", --results_file   File into which to store Metrics."
    _release_release: ", --release        Release number. Only ENSEMBL releases 59-88 are available (default: 88)"
    od: ", --out_dir       Download to this directory (if not given, current working directory) (default: None)"
    _annotation_filename: ", --annotation     Annotation filename (must have .gz file extension). If not given,\\nspecies.release.gtf.gz is used. If annotation is provided as absolute\\npath, value of out_dir parameter is ignored and file is saved to given\\nabsolute path (default: None)"
    genome: "Genome filename (must have .gz file extension). If not given,\\nspecies.release.fa.gz is used. If genome is provided as absolute path,\\nvalue of out_dir parameter is ignored and file is saved to given\\nabsolute path (default: None)"
    chromosomes: "[ ...]\\nIf given, do not download the whole genome, but listed\\nchromosomes only. Chromosomes can be given as strings or integers (default: None)"
    report_progress: "Switch to show progress (default: False)"
    mis: ", --mismatches   Number of tolerated mismatches when comparing barcodes (default: 1)"
    ml: ", --minimum_length\\nMinimum length of trimmed sequence to keep (default: 15)"
    prefix: "Prefix of generated FASTQ files (default: demux)"
    qual_trim: "Trim low-quality bases before adapter removal (default: None)"
    overhang: "Sequence length around annotated junctions to be used by STAR when\\nconstructing splice junction database (default: 100)"
    overhang_min: "TODO (default: 8)"
    threads: "Number of threads that STAR can use for generating index (default: 1)"
    multimax: "Number of allowed multiple hits (default: 10)"
    _groupby_assign: ", --group_by       Assign score of a read to either 'start', 'middle' or 'end' nucleotide (default: start)"
    quant: "Report number of 'cDNA' or number of 'reads' (default: cDNA)"
    segmentation: "File with custon segmentation format (obtained by ``iCount segment``) (default: None)"
    mapq_th: "Ignore hits with MAPQ < mapq_th (default: 0)"
    gap_th: "Reads with gaps less than gap_th are treated as if they have no gap (default: 4)"
    subtype: "Subtype (default: biotype)"
    excluded_types_default: "[ ...], --excluded_types  [ ...]\\nExcluded types (default: None)"
    dist: "Distance between two peaks to merge into same cluster (default: 20)"
    slop: "Distance between site and cluster to assign site to cluster (default: 3)"
    scores: "File name for \\\"scores\\\" output. File reports all cross-link events,\\nindependent from their FDR score It should have .tsv, .csv, .txt or .gz\\nextension (default: None)"
    features: "[ ...]    Features from annotation to consider. If None, ['gene'] is used.\\nSometimes, it is advised to use ['gene', 'intergenic'] (default: None)"
    merge_features: "Treat all features as one when grouping. Has no effect when only one\\nfeature is given in features parameter (default: False)"
    half_window: "Half-window size (default: 3)"
    fdr: "FDR threshold (default: 0.05)"
    _perms_number: ", --perms          Number of permutations when calculating random distribution (default: 100)"
    rnd: ", --rnd_seed     Seed for random generator (default: 42)"
    implicit_handling: "Can be 'closest' or 'split'. In case of implicit read - split score to\\nboth neighbours or give it just to the closest neighbour (default: closest)"
    holesize_th: "Raeads with size of holes less than holesize_th are treted as if they\\nwould have no holes (default: 4)"
    types_length_file: "Path to file with lengths of each type (default: None)"
    digits: "Number of decimal places in results (default: 8)"
    v: ""
  }
  output {
    File out_stdout = stdout()
    File out_scores = "${in_scores}"
  }
}