class: CommandLineTool
id: pbsv_call.cwl
inputs:
- id: in_chunk_length
  doc: "STR   Process in chunks of N\nreference bp. [1M]"
  type: boolean?
  inputBinding:
    prefix: --chunk-length
- id: in_region
  doc: "STR   Limit discovery to this\nreference region:\nCHR|CHR:START-END."
  type: boolean?
  inputBinding:
    prefix: --region
- id: in_types
  doc: "STR   Call these SV types: \"DEL\",\n\"INS\", \"INV\", \"DUP\", \"BND\",\n\
    \"CNV\".\n[DEL,INS,INV,DUP,BND,CNV]"
  type: boolean?
  inputBinding:
    prefix: --types
- id: in_min_sv_length
  doc: "STR   Ignore variants with length\n< N bp. [20]"
  type: boolean?
  inputBinding:
    prefix: --min-sv-length
- id: in_min_cnv_length
  doc: "STR   Ignore CNVs with length < N\nbp. [1K]"
  type: boolean?
  inputBinding:
    prefix: --min-cnv-length
- id: in_max_ins_length
  doc: "STR   Ignore insertions with\nlength > N bp. [15K]"
  type: boolean?
  inputBinding:
    prefix: --max-ins-length
- id: in_max_dup_length
  doc: "STR   Ignore duplications with\nlength > N bp. [100K]"
  type: boolean?
  inputBinding:
    prefix: --max-dup-length
- id: in_cluster_max_length_perc_diff
  doc: "INT   Do not cluster signatures\nwith difference in length >\nP%. [25]"
  type: boolean?
  inputBinding:
    prefix: --cluster-max-length-perc-diff
- id: in_cluster_max_ref_pos_diff
  doc: "STR   Do not cluster signatures >\nN bp apart in reference.\n[200]"
  type: boolean?
  inputBinding:
    prefix: --cluster-max-ref-pos-diff
- id: in_cluster_min_base_pair_perc_id
  doc: "INT   Do not cluster signatures\nwith basepair identity <\nP%. [10]"
  type: boolean?
  inputBinding:
    prefix: --cluster-min-basepair-perc-id
- id: in_max_consensus_coverage
  doc: "INT   Limit to N reads for\nvariant consensus. [20]"
  type: boolean?
  inputBinding:
    prefix: --max-consensus-coverage
- id: in_poa_scores
  doc: "STR   Score POA alignment with\ntriplet match,mismatch,gap.\n[1,-2,-2]"
  type: boolean?
  inputBinding:
    prefix: --poa-scores
- id: in_min_realign_length
  doc: "STR   Consider segments with > N\nlength for re-alignment.\n[100]"
  type: boolean?
  inputBinding:
    prefix: --min-realign-length
- id: in_call_min_reads_all_samples
  doc: "INT   Ignore calls supported by <\nN reads total across\nsamples. [2]"
  type: boolean?
  inputBinding:
    prefix: --call-min-reads-all-samples
- id: in_call_min_reads_one_sample
  doc: "INT   Ignore calls supported by <\nN reads in every sample.\n[2]"
  type: boolean?
  inputBinding:
    prefix: --call-min-reads-one-sample
- id: in_call_min_reads_per_strand_all_samples
  doc: "INT   Ignore calls supported by <\nN reads per strand total\nacross samples\
    \ [1]"
  type: boolean?
  inputBinding:
    prefix: --call-min-reads-per-strand-all-samples
- id: in_call_min_bnd_reads_all_samples
  doc: "INT   Ignore BND calls supported\nby < N reads total across\nsamples [2]"
  type: boolean?
  inputBinding:
    prefix: --call-min-bnd-reads-all-samples
- id: in_call_min_read_perc_one_sample
  doc: "INT   Ignore calls supported by <\nP% of reads in every\nsample. [20]"
  type: boolean?
  inputBinding:
    prefix: --call-min-read-perc-one-sample
- id: in_ccs
  doc: 'CCS optimized parameters:'
  type: boolean?
  inputBinding:
    prefix: --ccs
- id: in_preserve_non_acgt
  doc: Preserve non-ACGT in REF
  type: long?
  inputBinding:
    prefix: --preserve-non-acgt
- id: in_gt_min_reads
  doc: "INT   Minimum supporting reads to\nassign a sample a\nnon-reference genotype.\
    \ [1]"
  type: boolean?
  inputBinding:
    prefix: --gt-min-reads
- id: in_annotations
  doc: "FILE  Annotate variants by\ncomparing with sequences in\nfasta.Default annotations\n\
    are ALU, L1, SVA."
  type: boolean?
  inputBinding:
    prefix: --annotations
- id: in_annotation_min_perc_sim
  doc: "INT   Annotate variant if\nsequence similarity > P%.\n[60]"
  type: boolean?
  inputBinding:
    prefix: --annotation-min-perc-sim
- id: in_min_n_in_gap
  doc: "STR   Consider >= N consecutive\n\"N\" bp as a reference gap.\n[50]"
  type: boolean?
  inputBinding:
    prefix: --min-N-in-gap
- id: in_filter_near_reference_gap
  doc: "STR   Flag variants < N bp from a\ngap as \"NearReferenceGap\".\n[1K]"
  type: boolean?
  inputBinding:
    prefix: --filter-near-reference-gap
- id: in_filter_near_contig_end
  doc: "STR   Flag variants < N bp from a\ncontig end as\n\"NearContigEnd\". [1K]"
  type: boolean?
  inputBinding:
    prefix: --filter-near-contig-end
- id: in_num_threads
  doc: "INT   Number of threads to use, 0\nmeans autodetection. [0]"
  type: boolean?
  inputBinding:
    prefix: --num-threads
- id: in_log_level
  doc: "STR   Set log level. Valid\nchoices: (TRACE, DEBUG,\nINFO, WARN, FATAL). [WARN]"
  type: boolean?
  inputBinding:
    prefix: --log-level
- id: in_log_file
  doc: "FILE  Log to a file, instead of\nstderr.\n"
  type: boolean?
  inputBinding:
    prefix: --log-file
- id: in_variants_dot
  doc: ref.in.svsig.gz|fofn                        STR   SV signatures from one or
  type: string
  inputBinding:
    position: 0
- id: in_ref_dot_out_dot_vcf
  doc: STR   Variant call format (VCF)
  type: string
  inputBinding:
    position: 0
- id: in_output_dot
  doc: 'Basic Options:'
  type: string
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/pbsv:2.4.1--0
cwlVersion: v1.1
baseCommand:
- pbsv
- call
