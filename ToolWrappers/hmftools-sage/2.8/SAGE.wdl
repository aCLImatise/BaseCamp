version 1.0

task SAGE {
  input {
    Int? base_qual_fixed_penalty
    String? b_qr_enabled
    Int? b_qr_max_alt_count
    Int? b_qr_min_map_qual
    String? b_qr_plot
    Int? b_qr_sample_size
    String? chr
    Boolean? hard_filter_enabled
    Int? hard_min_tumor_qual
    Int? hard_min_tumor_raw_alt_support
    Int? hard_min_tumor_raw_base_quality
    File? high_confidence_bed
    String? high_confidence_max_germline_rel_raw_base_qual
    String? high_confidence_max_germline_vaf
    String? high_confidence_min_germline_depth
    String? high_confidence_min_germline_depth_allo_some
    String? high_confidence_min_tumor_qual
    String? high_confidence_min_tumor_vaf
    Int? highly_polymorphic_genes
    Float? hotspot_max_germline_rel_raw_base_qual
    Float? hotspot_max_germline_vaf
    Int? hotspot_min_germline_depth
    Int? hotspot_min_germline_depth_allo_some
    Int? hotspot_min_tumor_qual
    Float? hotspot_min_tumor_vaf
    String? hotspots
    Int? jitter_min_repeat_count
    Float? jitter_penalty
    String? low_confidence_max_germline_rel_raw_base_qual
    String? low_confidence_max_germline_vaf
    String? low_confidence_min_germline_depth
    String? low_confidence_min_germline_depth_allo_some
    String? low_confidence_min_tumor_qual
    String? low_confidence_min_tumor_vaf
    Int? map_qual_fixed_penalty
    Int? map_qual_improper_pair_penalty
    Int? map_qual_read_events_penalty
    Int? max_read_depth
    Int? max_read_depth_panel
    Int? max_realignment_depth
    Int? min_map_quality
    String? mnv_enabled
    Boolean? mnv_filter_enabled
    File? out
    Float? panel_max_germline_vaf
    Int? panel_min_germline_depth
    Int? panel_min_germline_depth_allo_some
    Int? panel_min_tumor_qual
    Float? panel_min_tumor_vaf
    Boolean? panel_only
    Int? read_context_flank_size
    Int? read_edge_fixed_penalty
    File? ref_genome
    String? reference
    Int? slice_size
    Boolean? soft_filter_enabled
    Int? threads
    String? tumor
    String sage_application
    String chromosome
    String optionally
    String max_germline_alt
    String vcf
    File panelmaxgermlinerelrawbasequal_arg_maximum
    File validationstringency_arg_sam
  }
  command <<<
    SAGE \
      ~{sage_application} \
      ~{chromosome} \
      ~{optionally} \
      ~{max_germline_alt} \
      ~{vcf} \
      ~{panelmaxgermlinerelrawbasequal_arg_maximum} \
      ~{validationstringency_arg_sam} \
      ~{if defined(base_qual_fixed_penalty) then ("-base_qual_fixed_penalty " +  '"' + base_qual_fixed_penalty + '"') else ""} \
      ~{if defined(b_qr_enabled) then ("-bqr_enabled " +  '"' + b_qr_enabled + '"') else ""} \
      ~{if defined(b_qr_max_alt_count) then ("-bqr_max_alt_count " +  '"' + b_qr_max_alt_count + '"') else ""} \
      ~{if defined(b_qr_min_map_qual) then ("-bqr_min_map_qual " +  '"' + b_qr_min_map_qual + '"') else ""} \
      ~{if defined(b_qr_plot) then ("-bqr_plot " +  '"' + b_qr_plot + '"') else ""} \
      ~{if defined(b_qr_sample_size) then ("-bqr_sample_size " +  '"' + b_qr_sample_size + '"') else ""} \
      ~{if defined(chr) then ("-chr " +  '"' + chr + '"') else ""} \
      ~{if (hard_filter_enabled) then "-hard_filter_enabled" else ""} \
      ~{if defined(hard_min_tumor_qual) then ("-hard_min_tumor_qual " +  '"' + hard_min_tumor_qual + '"') else ""} \
      ~{if defined(hard_min_tumor_raw_alt_support) then ("-hard_min_tumor_raw_alt_support " +  '"' + hard_min_tumor_raw_alt_support + '"') else ""} \
      ~{if defined(hard_min_tumor_raw_base_quality) then ("-hard_min_tumor_raw_base_quality " +  '"' + hard_min_tumor_raw_base_quality + '"') else ""} \
      ~{if defined(high_confidence_bed) then ("-high_confidence_bed " +  '"' + high_confidence_bed + '"') else ""} \
      ~{if defined(high_confidence_max_germline_rel_raw_base_qual) then ("-high_confidence_max_germline_rel_raw_base_qual " +  '"' + high_confidence_max_germline_rel_raw_base_qual + '"') else ""} \
      ~{if defined(high_confidence_max_germline_vaf) then ("-high_confidence_max_germline_vaf " +  '"' + high_confidence_max_germline_vaf + '"') else ""} \
      ~{if defined(high_confidence_min_germline_depth) then ("-high_confidence_min_germline_depth " +  '"' + high_confidence_min_germline_depth + '"') else ""} \
      ~{if defined(high_confidence_min_germline_depth_allo_some) then ("-high_confidence_min_germline_depth_allosome " +  '"' + high_confidence_min_germline_depth_allo_some + '"') else ""} \
      ~{if defined(high_confidence_min_tumor_qual) then ("-high_confidence_min_tumor_qual " +  '"' + high_confidence_min_tumor_qual + '"') else ""} \
      ~{if defined(high_confidence_min_tumor_vaf) then ("-high_confidence_min_tumor_vaf " +  '"' + high_confidence_min_tumor_vaf + '"') else ""} \
      ~{if defined(highly_polymorphic_genes) then ("-highly_polymorphic_genes " +  '"' + highly_polymorphic_genes + '"') else ""} \
      ~{if defined(hotspot_max_germline_rel_raw_base_qual) then ("-hotspot_max_germline_rel_raw_base_qual " +  '"' + hotspot_max_germline_rel_raw_base_qual + '"') else ""} \
      ~{if defined(hotspot_max_germline_vaf) then ("-hotspot_max_germline_vaf " +  '"' + hotspot_max_germline_vaf + '"') else ""} \
      ~{if defined(hotspot_min_germline_depth) then ("-hotspot_min_germline_depth " +  '"' + hotspot_min_germline_depth + '"') else ""} \
      ~{if defined(hotspot_min_germline_depth_allo_some) then ("-hotspot_min_germline_depth_allosome " +  '"' + hotspot_min_germline_depth_allo_some + '"') else ""} \
      ~{if defined(hotspot_min_tumor_qual) then ("-hotspot_min_tumor_qual " +  '"' + hotspot_min_tumor_qual + '"') else ""} \
      ~{if defined(hotspot_min_tumor_vaf) then ("-hotspot_min_tumor_vaf " +  '"' + hotspot_min_tumor_vaf + '"') else ""} \
      ~{if defined(hotspots) then ("-hotspots " +  '"' + hotspots + '"') else ""} \
      ~{if defined(jitter_min_repeat_count) then ("-jitter_min_repeat_count " +  '"' + jitter_min_repeat_count + '"') else ""} \
      ~{if defined(jitter_penalty) then ("-jitter_penalty " +  '"' + jitter_penalty + '"') else ""} \
      ~{if defined(low_confidence_max_germline_rel_raw_base_qual) then ("-low_confidence_max_germline_rel_raw_base_qual " +  '"' + low_confidence_max_germline_rel_raw_base_qual + '"') else ""} \
      ~{if defined(low_confidence_max_germline_vaf) then ("-low_confidence_max_germline_vaf " +  '"' + low_confidence_max_germline_vaf + '"') else ""} \
      ~{if defined(low_confidence_min_germline_depth) then ("-low_confidence_min_germline_depth " +  '"' + low_confidence_min_germline_depth + '"') else ""} \
      ~{if defined(low_confidence_min_germline_depth_allo_some) then ("-low_confidence_min_germline_depth_allosome " +  '"' + low_confidence_min_germline_depth_allo_some + '"') else ""} \
      ~{if defined(low_confidence_min_tumor_qual) then ("-low_confidence_min_tumor_qual " +  '"' + low_confidence_min_tumor_qual + '"') else ""} \
      ~{if defined(low_confidence_min_tumor_vaf) then ("-low_confidence_min_tumor_vaf " +  '"' + low_confidence_min_tumor_vaf + '"') else ""} \
      ~{if defined(map_qual_fixed_penalty) then ("-map_qual_fixed_penalty " +  '"' + map_qual_fixed_penalty + '"') else ""} \
      ~{if defined(map_qual_improper_pair_penalty) then ("-map_qual_improper_pair_penalty " +  '"' + map_qual_improper_pair_penalty + '"') else ""} \
      ~{if defined(map_qual_read_events_penalty) then ("-map_qual_read_events_penalty " +  '"' + map_qual_read_events_penalty + '"') else ""} \
      ~{if defined(max_read_depth) then ("-max_read_depth " +  '"' + max_read_depth + '"') else ""} \
      ~{if defined(max_read_depth_panel) then ("-max_read_depth_panel " +  '"' + max_read_depth_panel + '"') else ""} \
      ~{if defined(max_realignment_depth) then ("-max_realignment_depth " +  '"' + max_realignment_depth + '"') else ""} \
      ~{if defined(min_map_quality) then ("-min_map_quality " +  '"' + min_map_quality + '"') else ""} \
      ~{if defined(mnv_enabled) then ("-mnv_enabled " +  '"' + mnv_enabled + '"') else ""} \
      ~{if (mnv_filter_enabled) then "-mnv_filter_enabled" else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(panel_max_germline_vaf) then ("-panel_max_germline_vaf " +  '"' + panel_max_germline_vaf + '"') else ""} \
      ~{if defined(panel_min_germline_depth) then ("-panel_min_germline_depth " +  '"' + panel_min_germline_depth + '"') else ""} \
      ~{if defined(panel_min_germline_depth_allo_some) then ("-panel_min_germline_depth_allosome " +  '"' + panel_min_germline_depth_allo_some + '"') else ""} \
      ~{if defined(panel_min_tumor_qual) then ("-panel_min_tumor_qual " +  '"' + panel_min_tumor_qual + '"') else ""} \
      ~{if defined(panel_min_tumor_vaf) then ("-panel_min_tumor_vaf " +  '"' + panel_min_tumor_vaf + '"') else ""} \
      ~{if (panel_only) then "-panel_only" else ""} \
      ~{if defined(read_context_flank_size) then ("-read_context_flank_size " +  '"' + read_context_flank_size + '"') else ""} \
      ~{if defined(read_edge_fixed_penalty) then ("-read_edge_fixed_penalty " +  '"' + read_edge_fixed_penalty + '"') else ""} \
      ~{if defined(ref_genome) then ("-ref_genome " +  '"' + ref_genome + '"') else ""} \
      ~{if defined(reference) then ("-reference " +  '"' + reference + '"') else ""} \
      ~{if defined(slice_size) then ("-slice_size " +  '"' + slice_size + '"') else ""} \
      ~{if (soft_filter_enabled) then "-soft_filter_enabled" else ""} \
      ~{if defined(threads) then ("-threads " +  '"' + threads + '"') else ""} \
      ~{if defined(tumor) then ("-tumor " +  '"' + tumor + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/hmftools-sage:2.8--hdfd78af_0"
  }
  parameter_meta {
    base_qual_fixed_penalty: "Fixed penalty to\\napply to base\\nquality [12]"
    b_qr_enabled: "BQR (Base Quality\\nRecalibration)\\nenabled [true]"
    b_qr_max_alt_count: "BQR maximum alt\\ncount to be an\\nerror [3]"
    b_qr_min_map_qual: "BQR min base\\nquality remap\\nqual [10]"
    b_qr_plot: "BQR plots [true]"
    b_qr_sample_size: "BQR sampling size\\nper autosome\\n[2000000]"
    chr: "Run for single"
    hard_filter_enabled: "All filters are\\nhard [false]"
    hard_min_tumor_qual: "Hard minimum\\ntumor quality\\n[30]"
    hard_min_tumor_raw_alt_support: "Hard minimum\\ntumor raw alt\\nsupport [2]"
    hard_min_tumor_raw_base_quality: "Hard minimum\\ntumor raw base\\nquality [0]"
    high_confidence_bed: "High confidence\\nregions bed file"
    high_confidence_max_germline_rel_raw_base_qual: "Maximum"
    high_confidence_max_germline_vaf: "Maximum"
    high_confidence_min_germline_depth: "Minimum"
    high_confidence_min_germline_depth_allo_some: "Minimum"
    high_confidence_min_tumor_qual: "Minimum"
    high_confidence_min_tumor_vaf: "Minimum"
    highly_polymorphic_genes: "Genes to exclude\\nevent distance\\npenalty\\n[HLA-A,HLA-B,HLA-\\nC,HLA-DQA1,HLA-DQ\\nB1,HLA-DRB1]"
    hotspot_max_germline_rel_raw_base_qual: "Maximum hotspot\\ngermline relative\\nquality [0.5]"
    hotspot_max_germline_vaf: "Maximum hotspot\\ngermline VAF\\n[0.1]"
    hotspot_min_germline_depth: "Minimum hotspot\\ngermline depth\\n[0]"
    hotspot_min_germline_depth_allo_some: "Minimum hotspot\\ngermline depth\\n[0]"
    hotspot_min_tumor_qual: "Minimum hotspot\\ntumor quality\\n[70]"
    hotspot_min_tumor_vaf: "Minimum hotspot\\ntumor VAF [0.005]"
    hotspots: "Hotspots"
    jitter_min_repeat_count: "Minimum repeat\\ncount before\\napplying jitter\\npenalty [3]"
    jitter_penalty: "Penalty to apply\\nto qual score\\nwhen read context\\nmatches with\\njitter [0.25]"
    low_confidence_max_germline_rel_raw_base_qual: "Maximum"
    low_confidence_max_germline_vaf: "Maximum"
    low_confidence_min_germline_depth: "Minimum"
    low_confidence_min_germline_depth_allo_some: "Minimum"
    low_confidence_min_tumor_qual: "Minimum"
    low_confidence_min_tumor_vaf: "Minimum"
    map_qual_fixed_penalty: "Fixed penalty to\\napply to map\\nquality [15]"
    map_qual_improper_pair_penalty: "Penalty to apply\\nto map qual when\\nSAM record does\\nnot have the\\nProperPair flag\\n[15]"
    map_qual_read_events_penalty: "Penalty to apply\\nto map qual for\\nadditional\\ndistance from ref\\n[8]"
    max_read_depth: "Max depth to look\\nfor evidence\\n[1000]"
    max_read_depth_panel: "Max depth to look\\nfor evidence in\\npanel [100000]"
    max_realignment_depth: "Max depth to\\ncheck for\\nrealignment\\n[1000]"
    min_map_quality: "Min map quality\\nto apply to\\nnon-hotspot\\nvariants [10]"
    mnv_enabled: "Enable MNVs\\n[true]"
    mnv_filter_enabled: "Enable"
    out: "Path to output"
    panel_max_germline_vaf: "Maximum panel\\ngermline VAF\\n[0.04]"
    panel_min_germline_depth: "Minimum panel\\ngermline depth\\n[0]"
    panel_min_germline_depth_allo_some: "Minimum panel\\ngermline depth\\n[0]"
    panel_min_tumor_qual: "Minimum panel\\ntumor quality\\n[100]"
    panel_min_tumor_vaf: "Minimum panel\\ntumor VAF [0.015]"
    panel_only: "Only examine\\npanel for\\nvariants"
    read_context_flank_size: "Size of read\\ncontext flank\\n[10]"
    read_edge_fixed_penalty: "Fixed penalty to\\napply to distance\\nfrom read edge\\n[0]"
    ref_genome: "Path to indexed\\nref genome fasta\\nfile"
    reference: "Name of reference"
    slice_size: "Slice size\\n[100000]"
    soft_filter_enabled: "Enable soft\\nfilters [true]"
    threads: "Number of threads\\n[2]"
    tumor: "Name of tumor"
    sage_application: "-assembly <arg>                                         Assembly, must be\\none of [hg19,\\nhg38]"
    chromosome: "-coverage_bed <arg>                                     Coverage is"
    optionally: "supplied bed"
    max_germline_alt: "support mnv"
    vcf: "-panel_bed <arg>                                        Panel regions bed"
    panelmaxgermlinerelrawbasequal_arg_maximum: "-panel_max_germline_rel_raw_base_qual <arg>             Maximum panel"
    validationstringency_arg_sam: "-validation_stringency <arg>                            SAM validation"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}