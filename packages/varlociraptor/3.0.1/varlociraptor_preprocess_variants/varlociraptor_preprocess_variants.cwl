class: CommandLineTool
id: varlociraptor_preprocess_variants.cwl
inputs:
- id: in_omit_insert_size
  doc: "Do not consider insert size when calculating support for a variant. Use this\
    \ flag when\nprocessing amplicon data, where indels do not impact the observed\
    \ insert size"
  type: boolean?
  inputBinding:
    prefix: --omit-insert-size
- id: in_alignment_properties
  doc: "Alignment properties JSON file for sample. If not provided, properties will\
    \ be estimated from the given BAM\nfile."
  type: File?
  inputBinding:
    prefix: --alignment-properties
- id: in_bam
  doc: BAM file with aligned reads from a single sample.
  type: File?
  inputBinding:
    prefix: --bam
- id: in_candidates
  doc: VCF/BCF file to process (if omitted, read from STDIN).
  type: File?
  inputBinding:
    prefix: --candidates
- id: in_max_depth
  doc: "Maximum number of observations to use for calling. If locus is exceeding this\
    \ number, downsampling is\nperformed. [default: 200]"
  type: long?
  inputBinding:
    prefix: --max-depth
- id: in_min_bam_re_fetch_distance
  doc: "Base pair distance to last fetched BAM interval such that a refetching is\
    \ performed instead of reading\nthrough until the next interval is reached. Making\
    \ this too small can cause unnecessary random access.\nMaking this too large can\
    \ lead to unneccessary iteration over irrelevant records. Benchmarking has shown\n\
    that at least for short reads, a value of 1 (e.g. always refetch) does not incur\
    \ additional costs and is a\nreasonable default. [default: 1]"
  type: long?
  inputBinding:
    prefix: --min-bam-refetch-distance
- id: in_output
  doc: BCF file that shall contain the results (if omitted, write to STDOUT).
  type: File?
  inputBinding:
    prefix: --output
- id: in_pair_hmm_mode
  doc: "PairHMM computation mode (either fast or exact). Fast mode means that only\
    \ the best alignment path is\nconsidered for probability calculation. In rare\
    \ cases, this can lead to wrong results for single reads.\nHence, we advice to\
    \ not use it when discrete allele frequences are of interest (0.5, 1.0). For continuous\n\
    allele frequencies, fast mode should cause almost no deviations from the exact\
    \ results. Also, if per sample\nallele frequencies are irrelevant (e.g. in large\
    \ cohorts), fast mode can be safely used. [default: exact]\n[possible values:\
    \ fast, exact]"
  type: File?
  inputBinding:
    prefix: --pairhmm-mode
- id: in_stranded_ness
  doc: "Strandedness of sequencing protocol in case of paired-end (opposite strand\
    \ as usual or same strand as with\nmate-pair sequencing.) [default: opposite]\
    \  [possible values: opposite, same]"
  type: string?
  inputBinding:
    prefix: --strandedness
- id: in_in_del_window
  doc: "Number of bases to consider left and right of breakpoint when calculating\
    \ read support. Currently\nimplemented maximum value is 64. [default: 64]"
  type: long?
  inputBinding:
    prefix: --indel-window
- id: in_reference_buffer_size
  doc: "Number of reference sequences to keep in buffer. Use a smaller value to save\
    \ memory at the expense of\nsometimes reduced parallelization. [default: 10]"
  type: long?
  inputBinding:
    prefix: --reference-buffer-size
- id: in_spurious_del_rate
  doc: "Rate of spuriosly deleted bases by the sequencer (Illumina: 5.1e-6, see Schirmer\
    \ et al. BMC Bioinformatics\n2016). [default: 5.1e-6]"
  type: double?
  inputBinding:
    prefix: --spurious-del-rate
- id: in_spurious_del_ext_rate
  doc: "Extension rate of spurious deletions by the sequencer (Illumina: 0.0, see\
    \ Schirmer et al. BMC Bioinformatics\n2016) [default: 0.0]"
  type: double?
  inputBinding:
    prefix: --spurious-delext-rate
- id: in_spurious_ins_rate
  doc: "Rate of spuriously inserted bases by the sequencer (Illumina: 2.8e-6, see\
    \ Schirmer et al. BMC Bioinformatics\n2016). [default: 2.8e-6]"
  type: double?
  inputBinding:
    prefix: --spurious-ins-rate
- id: in_spurious_in_sext_rate
  doc: "Extension rate of spurious insertions by the sequencer (Illumina: 0.0, see\
    \ Schirmer et al. BMC\nBioinformatics 2016) [default: 0.0]"
  type: double?
  inputBinding:
    prefix: --spurious-insext-rate
- id: in_reference_dot_fast_a
  doc: ''
  type: string
  inputBinding:
    position: 0
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/varlociraptor:3.0.1--hd302352_0
cwlVersion: v1.1
baseCommand:
- varlociraptor
- preprocess
- variants
