class: CommandLineTool
id: FusionInspector.cwl
inputs:
- id: in_fusions
  doc: fusions summary files (list, comma-delimited and no spaces)
  type: string
  inputBinding:
    prefix: --fusions
- id: in_left_fq
  doc: left (or single) fastq file
  type: File
  inputBinding:
    prefix: --left_fq
- id: in_right_fq
  doc: right fastq file (optional)
  type: File
  inputBinding:
    prefix: --right_fq
- id: in_genome_lib_dir
  doc: genome lib directory - see http://FusionFilter.github.io for details.  Uses
    env var CTAT_GENOME_LIB as default
  type: Directory
  inputBinding:
    prefix: --genome_lib_dir
- id: in_samples_file
  doc: 'samples file (format: sample(tab)/path/left.fq(tab)/path/right.fq'
  type: File
  inputBinding:
    prefix: --samples_file
- id: in_output_dir
  doc: output directory
  type: Directory
  inputBinding:
    prefix: --output_dir
- id: in_out_prefix
  doc: output filename prefix
  type: File
  inputBinding:
    prefix: --out_prefix
- id: in_min_junction_reads
  doc: minimum number of junction-spanning reads required
  type: long
  inputBinding:
    prefix: --min_junction_reads
- id: in_min_sum_frags
  doc: 'minimum fusion support = ( # junction_reads + # spanning_frags )'
  type: long
  inputBinding:
    prefix: --min_sum_frags
- id: in_min_novel_junction_support
  doc: minimum number of junction reads required if breakpoint lacks involvement of
    only reference junctions
  type: long
  inputBinding:
    prefix: --min_novel_junction_support
- id: in_min_spanning_frags_only
  doc: minimum number of spanning frags if no junction reads are found
  type: long
  inputBinding:
    prefix: --min_spanning_frags_only
- id: in_require_ldas
  doc: require long double anchor support for split reads when no spanning frags are
    found
  type: string
  inputBinding:
    prefix: --require_LDAS
- id: in_max_promiscuity
  doc: maximum number of partners allowed for a given fusion
  type: long
  inputBinding:
    prefix: --max_promiscuity
- id: in_min_pct_dom_promiscuity
  doc: for promiscuous fusions, those with less than this support of the dominant
    scoring pair are filtered prior to applying the max_promiscuity filter.
  type: long
  inputBinding:
    prefix: --min_pct_dom_promiscuity
- id: in_min_per_id
  doc: minimum percent identity for a fusion-supporting read alignment
  type: long
  inputBinding:
    prefix: --min_per_id
- id: in_only_fusion_reads
  doc: include only read alignments in output that support fusion
  type: boolean
  inputBinding:
    prefix: --only_fusion_reads
- id: in_capture_genome_alignments
  doc: reports ref genome alignments too (for debugging only)
  type: boolean
  inputBinding:
    prefix: --capture_genome_alignments
- id: in_include_trinity
  doc: include fusion-guided Trinity assembly
  type: boolean
  inputBinding:
    prefix: --include_Trinity
- id: in_vis
  doc: generate bam, bed, etc., and generate igv-reports html visualization
  type: boolean
  inputBinding:
    prefix: --vis
- id: in_write_intermediate_results
  doc: generate bam, bed, etc., for intermediate aligner outputs
  type: boolean
  inputBinding:
    prefix: --write_intermediate_results
- id: in_cleanup
  doc: cleanup the fusion inspector workspace, remove intermediate output files
  type: boolean
  inputBinding:
    prefix: --cleanup
- id: in_cpu
  doc: number of threads for multithreaded processes
  type: long
  inputBinding:
    prefix: --CPU
- id: in_annotate
  doc: annotate fusions based on known cancer fusions and those found in normal tissues
  type: boolean
  inputBinding:
    prefix: --annotate
- id: in_examine_coding_effect
  doc: explore impact of fusions on coding sequences
  type: boolean
  inputBinding:
    prefix: --examine_coding_effect
- id: in_aligner_path
  doc: 'path to the aligner tool (default: uses PATH setting)'
  type: File
  inputBinding:
    prefix: --aligner_path
- id: in_fusion_contigs_only
  doc: align reads only to the fusion contigs
  type: boolean
  inputBinding:
    prefix: --fusion_contigs_only
- id: in_extract_fusion_reads_file
  doc: file prefix to write fusion evidence reads in fastq format
  type: File
  inputBinding:
    prefix: --extract_fusion_reads_file
- id: in_no_remove_dups
  doc: do not exclude duplicate reads
  type: boolean
  inputBinding:
    prefix: --no_remove_dups
- id: in_far_pseudo_count
  doc: pseudocount to be used in fusion allelic ratio (FAR) computation
  type: string
  inputBinding:
    prefix: --FAR_pseudocount
- id: in_star_max_mate_dist
  doc: max mate distance and max intron length for STAR
  type: long
  inputBinding:
    prefix: --STAR_max_mate_dist
- id: in_no_ff_pm
  doc: do not compute FFPM value - ie. using inspect instead of validate mode, in
    which case FFPM would not be meaningful given the full sample of reads is not
    evaluated
  type: boolean
  inputBinding:
    prefix: --no_FFPM
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_output_dir
  doc: output directory
  type: Directory
  outputBinding:
    glob: $(inputs.in_output_dir)
- id: out_out_prefix
  doc: output filename prefix
  type: File
  outputBinding:
    glob: $(inputs.in_out_prefix)
cwlVersion: v1.1
baseCommand:
- FusionInspector
