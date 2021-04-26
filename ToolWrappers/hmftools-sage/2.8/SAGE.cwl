class: CommandLineTool
id: SAGE.cwl
inputs:
- id: in_base_qual_fixed_penalty
  doc: "Fixed penalty to\napply to base\nquality [12]"
  type: long?
  inputBinding:
    prefix: -base_qual_fixed_penalty
- id: in_b_qr_enabled
  doc: "BQR (Base Quality\nRecalibration)\nenabled [true]"
  type: string?
  inputBinding:
    prefix: -bqr_enabled
- id: in_b_qr_max_alt_count
  doc: "BQR maximum alt\ncount to be an\nerror [3]"
  type: long?
  inputBinding:
    prefix: -bqr_max_alt_count
- id: in_b_qr_min_map_qual
  doc: "BQR min base\nquality remap\nqual [10]"
  type: long?
  inputBinding:
    prefix: -bqr_min_map_qual
- id: in_b_qr_plot
  doc: BQR plots [true]
  type: string?
  inputBinding:
    prefix: -bqr_plot
- id: in_b_qr_sample_size
  doc: "BQR sampling size\nper autosome\n[2000000]"
  type: long?
  inputBinding:
    prefix: -bqr_sample_size
- id: in_chr
  doc: Run for single
  type: string?
  inputBinding:
    prefix: -chr
- id: in_hard_filter_enabled
  doc: "All filters are\nhard [false]"
  type: boolean?
  inputBinding:
    prefix: -hard_filter_enabled
- id: in_hard_min_tumor_qual
  doc: "Hard minimum\ntumor quality\n[30]"
  type: long?
  inputBinding:
    prefix: -hard_min_tumor_qual
- id: in_hard_min_tumor_raw_alt_support
  doc: "Hard minimum\ntumor raw alt\nsupport [2]"
  type: long?
  inputBinding:
    prefix: -hard_min_tumor_raw_alt_support
- id: in_hard_min_tumor_raw_base_quality
  doc: "Hard minimum\ntumor raw base\nquality [0]"
  type: long?
  inputBinding:
    prefix: -hard_min_tumor_raw_base_quality
- id: in_high_confidence_bed
  doc: "High confidence\nregions bed file"
  type: File?
  inputBinding:
    prefix: -high_confidence_bed
- id: in_high_confidence_max_germline_rel_raw_base_qual
  doc: Maximum
  type: string?
  inputBinding:
    prefix: -high_confidence_max_germline_rel_raw_base_qual
- id: in_high_confidence_max_germline_vaf
  doc: Maximum
  type: string?
  inputBinding:
    prefix: -high_confidence_max_germline_vaf
- id: in_high_confidence_min_germline_depth
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -high_confidence_min_germline_depth
- id: in_high_confidence_min_germline_depth_allo_some
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -high_confidence_min_germline_depth_allosome
- id: in_high_confidence_min_tumor_qual
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -high_confidence_min_tumor_qual
- id: in_high_confidence_min_tumor_vaf
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -high_confidence_min_tumor_vaf
- id: in_highly_polymorphic_genes
  doc: "Genes to exclude\nevent distance\npenalty\n[HLA-A,HLA-B,HLA-\nC,HLA-DQA1,HLA-DQ\n\
    B1,HLA-DRB1]"
  type: long?
  inputBinding:
    prefix: -highly_polymorphic_genes
- id: in_hotspot_max_germline_rel_raw_base_qual
  doc: "Maximum hotspot\ngermline relative\nquality [0.5]"
  type: double?
  inputBinding:
    prefix: -hotspot_max_germline_rel_raw_base_qual
- id: in_hotspot_max_germline_vaf
  doc: "Maximum hotspot\ngermline VAF\n[0.1]"
  type: double?
  inputBinding:
    prefix: -hotspot_max_germline_vaf
- id: in_hotspot_min_germline_depth
  doc: "Minimum hotspot\ngermline depth\n[0]"
  type: long?
  inputBinding:
    prefix: -hotspot_min_germline_depth
- id: in_hotspot_min_germline_depth_allo_some
  doc: "Minimum hotspot\ngermline depth\n[0]"
  type: long?
  inputBinding:
    prefix: -hotspot_min_germline_depth_allosome
- id: in_hotspot_min_tumor_qual
  doc: "Minimum hotspot\ntumor quality\n[70]"
  type: long?
  inputBinding:
    prefix: -hotspot_min_tumor_qual
- id: in_hotspot_min_tumor_vaf
  doc: "Minimum hotspot\ntumor VAF [0.005]"
  type: double?
  inputBinding:
    prefix: -hotspot_min_tumor_vaf
- id: in_hotspots
  doc: Hotspots
  type: string?
  inputBinding:
    prefix: -hotspots
- id: in_jitter_min_repeat_count
  doc: "Minimum repeat\ncount before\napplying jitter\npenalty [3]"
  type: long?
  inputBinding:
    prefix: -jitter_min_repeat_count
- id: in_jitter_penalty
  doc: "Penalty to apply\nto qual score\nwhen read context\nmatches with\njitter [0.25]"
  type: double?
  inputBinding:
    prefix: -jitter_penalty
- id: in_low_confidence_max_germline_rel_raw_base_qual
  doc: Maximum
  type: string?
  inputBinding:
    prefix: -low_confidence_max_germline_rel_raw_base_qual
- id: in_low_confidence_max_germline_vaf
  doc: Maximum
  type: string?
  inputBinding:
    prefix: -low_confidence_max_germline_vaf
- id: in_low_confidence_min_germline_depth
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -low_confidence_min_germline_depth
- id: in_low_confidence_min_germline_depth_allo_some
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -low_confidence_min_germline_depth_allosome
- id: in_low_confidence_min_tumor_qual
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -low_confidence_min_tumor_qual
- id: in_low_confidence_min_tumor_vaf
  doc: Minimum
  type: string?
  inputBinding:
    prefix: -low_confidence_min_tumor_vaf
- id: in_map_qual_fixed_penalty
  doc: "Fixed penalty to\napply to map\nquality [15]"
  type: long?
  inputBinding:
    prefix: -map_qual_fixed_penalty
- id: in_map_qual_improper_pair_penalty
  doc: "Penalty to apply\nto map qual when\nSAM record does\nnot have the\nProperPair\
    \ flag\n[15]"
  type: long?
  inputBinding:
    prefix: -map_qual_improper_pair_penalty
- id: in_map_qual_read_events_penalty
  doc: "Penalty to apply\nto map qual for\nadditional\ndistance from ref\n[8]"
  type: long?
  inputBinding:
    prefix: -map_qual_read_events_penalty
- id: in_max_read_depth
  doc: "Max depth to look\nfor evidence\n[1000]"
  type: long?
  inputBinding:
    prefix: -max_read_depth
- id: in_max_read_depth_panel
  doc: "Max depth to look\nfor evidence in\npanel [100000]"
  type: long?
  inputBinding:
    prefix: -max_read_depth_panel
- id: in_max_realignment_depth
  doc: "Max depth to\ncheck for\nrealignment\n[1000]"
  type: long?
  inputBinding:
    prefix: -max_realignment_depth
- id: in_min_map_quality
  doc: "Min map quality\nto apply to\nnon-hotspot\nvariants [10]"
  type: long?
  inputBinding:
    prefix: -min_map_quality
- id: in_mnv_enabled
  doc: "Enable MNVs\n[true]"
  type: string?
  inputBinding:
    prefix: -mnv_enabled
- id: in_mnv_filter_enabled
  doc: Enable
  type: boolean?
  inputBinding:
    prefix: -mnv_filter_enabled
- id: in_out
  doc: Path to output
  type: File?
  inputBinding:
    prefix: -out
- id: in_panel_max_germline_vaf
  doc: "Maximum panel\ngermline VAF\n[0.04]"
  type: double?
  inputBinding:
    prefix: -panel_max_germline_vaf
- id: in_panel_min_germline_depth
  doc: "Minimum panel\ngermline depth\n[0]"
  type: long?
  inputBinding:
    prefix: -panel_min_germline_depth
- id: in_panel_min_germline_depth_allo_some
  doc: "Minimum panel\ngermline depth\n[0]"
  type: long?
  inputBinding:
    prefix: -panel_min_germline_depth_allosome
- id: in_panel_min_tumor_qual
  doc: "Minimum panel\ntumor quality\n[100]"
  type: long?
  inputBinding:
    prefix: -panel_min_tumor_qual
- id: in_panel_min_tumor_vaf
  doc: "Minimum panel\ntumor VAF [0.015]"
  type: double?
  inputBinding:
    prefix: -panel_min_tumor_vaf
- id: in_panel_only
  doc: "Only examine\npanel for\nvariants"
  type: boolean?
  inputBinding:
    prefix: -panel_only
- id: in_read_context_flank_size
  doc: "Size of read\ncontext flank\n[10]"
  type: long?
  inputBinding:
    prefix: -read_context_flank_size
- id: in_read_edge_fixed_penalty
  doc: "Fixed penalty to\napply to distance\nfrom read edge\n[0]"
  type: long?
  inputBinding:
    prefix: -read_edge_fixed_penalty
- id: in_ref_genome
  doc: "Path to indexed\nref genome fasta\nfile"
  type: File?
  inputBinding:
    prefix: -ref_genome
- id: in_reference
  doc: Name of reference
  type: string?
  inputBinding:
    prefix: -reference
- id: in_slice_size
  doc: "Slice size\n[100000]"
  type: long?
  inputBinding:
    prefix: -slice_size
- id: in_soft_filter_enabled
  doc: "Enable soft\nfilters [true]"
  type: boolean?
  inputBinding:
    prefix: -soft_filter_enabled
- id: in_threads
  doc: "Number of threads\n[2]"
  type: long?
  inputBinding:
    prefix: -threads
- id: in_tumor
  doc: Name of tumor
  type: string?
  inputBinding:
    prefix: -tumor
- id: in_sage_application
  doc: "-assembly <arg>                                         Assembly, must be\n\
    one of [hg19,\nhg38]"
  type: string
  inputBinding:
    position: 0
- id: in_chromosome
  doc: -coverage_bed <arg>                                     Coverage is
  type: string
  inputBinding:
    position: 1
- id: in_optionally
  doc: supplied bed
  type: string
  inputBinding:
    position: 0
- id: in_max_germline_alt
  doc: support mnv
  type: string
  inputBinding:
    position: 1
- id: in_vcf
  doc: -panel_bed <arg>                                        Panel regions bed
  type: string
  inputBinding:
    position: 0
- id: in_panelmaxgermlinerelrawbasequal_arg_maximum
  doc: -panel_max_germline_rel_raw_base_qual <arg>             Maximum panel
  type: File
  inputBinding:
    position: 1
- id: in_validationstringency_arg_sam
  doc: -validation_stringency <arg>                            SAM validation
  type: File
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_out
  doc: Path to output
  type: File?
  outputBinding:
    glob: $(inputs.in_out)
hints:
- class: DockerRequirement
  dockerPull: quay.io/biocontainers/hmftools-sage:2.8--hdfd78af_0
cwlVersion: v1.1
baseCommand:
- SAGE
