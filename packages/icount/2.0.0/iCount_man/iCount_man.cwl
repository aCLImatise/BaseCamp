class: CommandLineTool
id: ../../../iCount_man.cwl
inputs:
- id: in__stdoutlog_threshold
  doc: ', --stdout_log     Threshold value (0-50) for logging to stdout. If 0, logging
    to stdout if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -S
- id: in__filelog_threshold
  doc: ', --file_log       Threshold value (0-50) for logging to file. If 0, logging
    to file if turned OFF.'
  type: boolean
  inputBinding:
    prefix: -F
- id: in__filelogpath_path
  doc: ', --file_logpath   Path to log file.'
  type: boolean
  inputBinding:
    prefix: -P
- id: in__file_store
  doc: ', --results_file   File into which to store Metrics.'
  type: boolean
  inputBinding:
    prefix: -M
- id: in__release_release
  doc: ', --release        Release number. Only ENSEMBL releases 59-88 are available
    (default: 88)'
  type: boolean
  inputBinding:
    prefix: -r
- id: in_od
  doc: ', --out_dir       Download to this directory (if not given, current working
    directory) (default: None)'
  type: boolean
  inputBinding:
    prefix: -od
- id: in__annotation_filename
  doc: ", --annotation     Annotation filename (must have .gz file extension). If\
    \ not given,\nspecies.release.gtf.gz is used. If annotation is provided as absolute\n\
    path, value of out_dir parameter is ignored and file is saved to given\nabsolute\
    \ path (default: None)"
  type: boolean
  inputBinding:
    prefix: -a
- id: in_genome
  doc: "Genome filename (must have .gz file extension). If not given,\nspecies.release.fa.gz\
    \ is used. If genome is provided as absolute path,\nvalue of out_dir parameter\
    \ is ignored and file is saved to given\nabsolute path (default: None)"
  type: boolean
  inputBinding:
    prefix: --genome
- id: in_chromosomes
  doc: "[ ...]\nIf given, do not download the whole genome, but listed\nchromosomes\
    \ only. Chromosomes can be given as strings or integers (default: None)"
  type: boolean
  inputBinding:
    prefix: --chromosomes
- id: in_report_progress
  doc: 'Switch to show progress (default: False)'
  type: boolean
  inputBinding:
    prefix: --report_progress
- id: in_mis
  doc: ', --mismatches   Number of tolerated mismatches when comparing barcodes (default:
    1)'
  type: boolean
  inputBinding:
    prefix: -mis
- id: in_ml
  doc: ", --minimum_length\nMinimum length of trimmed sequence to keep (default: 15)"
  type: boolean
  inputBinding:
    prefix: -ml
- id: in_prefix
  doc: 'Prefix of generated FASTQ files (default: demux)'
  type: boolean
  inputBinding:
    prefix: --prefix
- id: in_qual_trim
  doc: 'Trim low-quality bases before adapter removal (default: None)'
  type: boolean
  inputBinding:
    prefix: --qual_trim
- id: in_overhang
  doc: "Sequence length around annotated junctions to be used by STAR when\nconstructing\
    \ splice junction database (default: 100)"
  type: boolean
  inputBinding:
    prefix: --overhang
- id: in_overhang_min
  doc: 'TODO (default: 8)'
  type: boolean
  inputBinding:
    prefix: --overhang_min
- id: in_threads
  doc: 'Number of threads that STAR can use for generating index (default: 1)'
  type: boolean
  inputBinding:
    prefix: --threads
- id: in_multimax
  doc: 'Number of allowed multiple hits (default: 10)'
  type: boolean
  inputBinding:
    prefix: --multimax
- id: in__groupby_assign
  doc: ", --group_by       Assign score of a read to either 'start', 'middle' or 'end'\
    \ nucleotide (default: start)"
  type: boolean
  inputBinding:
    prefix: -g
- id: in_quant
  doc: "Report number of 'cDNA' or number of 'reads' (default: cDNA)"
  type: boolean
  inputBinding:
    prefix: --quant
- id: in_segmentation
  doc: 'File with custon segmentation format (obtained by ``iCount segment``) (default:
    None)'
  type: boolean
  inputBinding:
    prefix: --segmentation
- id: in_mapq_th
  doc: 'Ignore hits with MAPQ < mapq_th (default: 0)'
  type: boolean
  inputBinding:
    prefix: --mapq_th
- id: in_gap_th
  doc: 'Reads with gaps less than gap_th are treated as if they have no gap (default:
    4)'
  type: boolean
  inputBinding:
    prefix: --gap_th
- id: in_subtype
  doc: 'Subtype (default: biotype)'
  type: boolean
  inputBinding:
    prefix: --subtype
- id: in_excluded_types_default
  doc: "[ ...], --excluded_types  [ ...]\nExcluded types (default: None)"
  type: boolean
  inputBinding:
    prefix: -e
- id: in_dist
  doc: 'Distance between two peaks to merge into same cluster (default: 20)'
  type: boolean
  inputBinding:
    prefix: --dist
- id: in_slop
  doc: 'Distance between site and cluster to assign site to cluster (default: 3)'
  type: boolean
  inputBinding:
    prefix: --slop
- id: in_scores
  doc: "File name for \"scores\" output. File reports all cross-link events,\nindependent\
    \ from their FDR score It should have .tsv, .csv, .txt or .gz\nextension (default:\
    \ None)"
  type: File
  inputBinding:
    prefix: --scores
- id: in_features
  doc: "[ ...]    Features from annotation to consider. If None, ['gene'] is used.\n\
    Sometimes, it is advised to use ['gene', 'intergenic'] (default: None)"
  type: boolean
  inputBinding:
    prefix: --features
- id: in_merge_features
  doc: "Treat all features as one when grouping. Has no effect when only one\nfeature\
    \ is given in features parameter (default: False)"
  type: boolean
  inputBinding:
    prefix: --merge_features
- id: in_half_window
  doc: 'Half-window size (default: 3)'
  type: boolean
  inputBinding:
    prefix: --half_window
- id: in_fdr
  doc: 'FDR threshold (default: 0.05)'
  type: boolean
  inputBinding:
    prefix: --fdr
- id: in__perms_number
  doc: ', --perms          Number of permutations when calculating random distribution
    (default: 100)'
  type: boolean
  inputBinding:
    prefix: -p
- id: in_rnd
  doc: ', --rnd_seed     Seed for random generator (default: 42)'
  type: boolean
  inputBinding:
    prefix: -rnd
- id: in_implicit_handling
  doc: "Can be 'closest' or 'split'. In case of implicit read - split score to\nboth\
    \ neighbours or give it just to the closest neighbour (default: closest)"
  type: boolean
  inputBinding:
    prefix: --implicit_handling
- id: in_holesize_th
  doc: "Raeads with size of holes less than holesize_th are treted as if they\nwould\
    \ have no holes (default: 4)"
  type: boolean
  inputBinding:
    prefix: --holesize_th
- id: in_types_length_file
  doc: 'Path to file with lengths of each type (default: None)'
  type: boolean
  inputBinding:
    prefix: --types_length_file
- id: in_digits
  doc: 'Number of decimal places in results (default: 8)'
  type: boolean
  inputBinding:
    prefix: --digits
- id: in_v
  doc: ''
  type: boolean
  inputBinding:
    prefix: -v
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_scores
  doc: "File name for \"scores\" output. File reports all cross-link events,\nindependent\
    \ from their FDR score It should have .tsv, .csv, .txt or .gz\nextension (default:\
    \ None)"
  type: File
  outputBinding:
    glob: $(inputs.in_scores)
cwlVersion: v1.1
baseCommand:
- iCount
- man
