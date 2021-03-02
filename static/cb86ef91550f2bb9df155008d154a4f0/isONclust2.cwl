class: CommandLineTool
id: isONclust2.cwl
inputs:
- id: in_batch_size
  doc: 'Batch size in kilobases (default: 50000)'
  type: boolean?
  inputBinding:
    prefix: --batch-size
- id: in_batch_max_seq
  doc: 'Maximum number of sequences per batch (default: 3000).'
  type: boolean?
  inputBinding:
    prefix: --batch-max-seq
- id: in_km_er_size
  doc: 'Kmer size (default: 11).'
  type: boolean?
  inputBinding:
    prefix: --kmer-size
- id: in_window_size
  doc: 'Window size (default: 15).'
  type: boolean?
  inputBinding:
    prefix: --window-size
- id: in_min_shared
  doc: 'Minimum number of minimizers shared between read and cluster (default: 5).'
  type: boolean?
  inputBinding:
    prefix: --min-shared
- id: in_min_qual
  doc: 'Minimum average quality value (default: 7.0).'
  type: boolean?
  inputBinding:
    prefix: --min-qual
- id: in_mode
  doc: "Clustering mode:\n* sahlin (default): use minimizers first, alignment second\n\
    * fast: use minimizers only\n* furious: always use alignment"
  type: boolean?
  inputBinding:
    prefix: --mode
- id: in_low_cons_size
  doc: 'Use all sequences for consensus below this size (default: 20).'
  type: boolean?
  inputBinding:
    prefix: --low-cons-size
- id: in_max_cons_size
  doc: 'Maximum number of sequences used for consensus (default: 150).'
  type: boolean?
  inputBinding:
    prefix: --max-cons-size
- id: in_cons_period
  doc: 'Do not recalculate consensus after this many seuqences added (default: 500).'
  type: boolean?
  inputBinding:
    prefix: --cons-period
- id: in_mapped_threshold
  doc: 'Minmum mapped fraction of read to be     included in cluster (default: 0.65).'
  type: boolean?
  inputBinding:
    prefix: --mapped-threshold
- id: in_aligned_threshold
  doc: 'aligned fraction of read to be included in cluster (default: 0.2).'
  type: double?
  inputBinding:
    prefix: --aligned-threshold
- id: in_min_fraction
  doc: 'Minimum fraction of minimizers shared compared to best hit, in order to continue
    mapping (default: 0.8).'
  type: boolean?
  inputBinding:
    prefix: --min-fraction
- id: in_min_prob_no_hits
  doc: 'Minimum probability for i consecutive    minimizers to be different between
    read and representative (default: 0.1)'
  type: boolean?
  inputBinding:
    prefix: --min-prob-no-hits
- id: in_min_cls_size
  doc: 'Skip clusters smaller than this in the left batch (default: 3).'
  type: boolean?
  inputBinding:
    prefix: --min-cls-size
- id: in_out_folder
  doc: 'Output folder (default:  ./isONclust2_batches).'
  type: Directory?
  inputBinding:
    prefix: --outfolder
- id: in_verbose
  doc: Verbose output.
  type: boolean?
  inputBinding:
    prefix: --verbose
- id: in_debug
  doc: Print debug info.
  type: boolean?
  inputBinding:
    prefix: --debug
- id: in_left_batch
  doc: Left input batch (mandatory).
  type: boolean?
  inputBinding:
    prefix: --left-batch
- id: in_right_batch
  doc: Right input batch (optional).
  type: boolean?
  inputBinding:
    prefix: --right-batch
- id: in_outfile
  doc: Output batch.
  type: boolean?
  inputBinding:
    prefix: --outfile
- id: in_spo_a_algo
  doc: "spoa alignment algorithm:\n* 0 (default): local\n* 1 : global\n* 1 : semi-global"
  type: boolean?
  inputBinding:
    prefix: --spoa-algo
- id: in_min_purge
  doc: Purge minimizer database from output batch.
  type: boolean?
  inputBinding:
    prefix: --min-purge
- id: in_keep_seq
  doc: Do not purge non-representative sequences from output batches.
  type: boolean?
  inputBinding:
    prefix: --keep-seq
- id: in_quiet
  doc: Supress progress bar.
  type: boolean?
  inputBinding:
    prefix: --quiet
- id: in_outdir
  doc: Output directory.
  type: Directory?
  inputBinding:
    prefix: --outdir
- id: in_index
  doc: Index of sorted reads.
  type: boolean?
  inputBinding:
    prefix: --index
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out_folder
  doc: 'Output folder (default:  ./isONclust2_batches).'
  type: Directory?
  outputBinding:
    glob: $(inputs.in_out_folder)
- id: out_outdir
  doc: Output directory.
  type: Directory?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- isONclust2
