version 1.0

task Truvari {
  input {
    String? base
    String? comp
    String? output_directory
    String? reference
    Boolean? gia_b_report
    Boolean? debug
    String? ref_dist
    String? pct_sim
    String? pct_size
    String? pc_to_vl
    Boolean? type_ignore
    Boolean? gt_comp
    String? b_sample
    String? c_sample
    Int? size_min
    Int? size_filt
    Int? size_max
    Boolean? pass_only
    Boolean? no_ref
    String? include_bed
    Boolean? multi_match
  }
  command <<<
    truvari \
      ~{if defined(base) then ("--base " +  '"' + base + '"') else ""} \
      ~{if defined(comp) then ("--comp " +  '"' + comp + '"') else ""} \
      ~{if defined(output_directory) then ("--output " +  '"' + output_directory + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{true="--giabreport" false="" gia_b_report} \
      ~{true="--debug" false="" debug} \
      ~{if defined(ref_dist) then ("--refdist " +  '"' + ref_dist + '"') else ""} \
      ~{if defined(pct_sim) then ("--pctsim " +  '"' + pct_sim + '"') else ""} \
      ~{if defined(pct_size) then ("--pctsize " +  '"' + pct_size + '"') else ""} \
      ~{if defined(pc_to_vl) then ("--pctovl " +  '"' + pc_to_vl + '"') else ""} \
      ~{true="--typeignore" false="" type_ignore} \
      ~{true="--gtcomp" false="" gt_comp} \
      ~{if defined(b_sample) then ("--bSample " +  '"' + b_sample + '"') else ""} \
      ~{if defined(c_sample) then ("--cSample " +  '"' + c_sample + '"') else ""} \
      ~{if defined(size_min) then ("--sizemin " +  '"' + size_min + '"') else ""} \
      ~{if defined(size_filt) then ("--sizefilt " +  '"' + size_filt + '"') else ""} \
      ~{if defined(size_max) then ("--sizemax " +  '"' + size_max + '"') else ""} \
      ~{true="--passonly" false="" pass_only} \
      ~{true="--no-ref" false="" no_ref} \
      ~{if defined(include_bed) then ("--includebed " +  '"' + include_bed + '"') else ""} \
      ~{true="--multimatch" false="" multi_match}
  >>>
  parameter_meta {
    base: "Baseline truth-set calls"
    comp: "Comparison set of calls"
    output_directory: "Output directory"
    reference: "Indexed fasta used to call variants"
    gia_b_report: "Parse output TPs/FNs for GIAB annotations and create a report"
    debug: "Verbose logging"
    ref_dist: "Max reference location distance (500)"
    pct_sim: "Min percent allele sequence similarity. Set to 0 to ignore. (0.7)"
    pct_size: "Min pct allele size similarity (minvarsize/maxvarsize) (0.7)"
    pc_to_vl: "Minimum pct reciprocal overlap (0.0)"
    type_ignore: "Variant types don't need to match to compare (False)"
    gt_comp: "Compare GenoTypes of matching calls"
    b_sample: "Baseline calls sample to use (first)"
    c_sample: "Comparison calls sample to use (first)"
    size_min: "Minimum variant size to consider for comparison (50)"
    size_filt: "Minimum variant size to load into IntervalTree (30)"
    size_max: "Maximum variant size to consider for comparison (50000)"
    pass_only: "Only consider calls with FILTER == PASS"
    no_ref: "Don't include 0/0 or ./. GT calls (False)"
    include_bed: "Bed file of regions in the genome to include only calls overlapping"
    multi_match: "Allow base calls to match multiple comparison calls (False)"
  }
}