version 1.0

task Ceas {
  input {
    String? bed
    String? wig
    String? e_bed
    String? gt
    String? name
    Int? sizes
    String? bi_sizes
    Boolean? bg
    String? span
    String? pf_res
    String? rel_dist
    String? gn_groups
    String? gn_group_names
    Boolean? g_name_two
    Boolean? dump
    String input_files
  }
  command <<<
    ceas \
      ~{input_files} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(wig) then ("--wig " +  '"' + wig + '"') else ""} \
      ~{if defined(e_bed) then ("--ebed " +  '"' + e_bed + '"') else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(bi_sizes) then ("--bisizes " +  '"' + bi_sizes + '"') else ""} \
      ~{true="--bg" false="" bg} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(pf_res) then ("--pf-res " +  '"' + pf_res + '"') else ""} \
      ~{if defined(rel_dist) then ("--rel-dist " +  '"' + rel_dist + '"') else ""} \
      ~{if defined(gn_groups) then ("--gn-groups " +  '"' + gn_groups + '"') else ""} \
      ~{if defined(gn_group_names) then ("--gn-group-names " +  '"' + gn_group_names + '"') else ""} \
      ~{true="--gname2" false="" g_name_two} \
      ~{true="--dump" false="" dump}
  >>>
  parameter_meta {
    bed: "BED file of ChIP regions."
    wig: "WIG file for either wig profiling or genome background annotation. WARNING: --bg flag must be set for genome background re-annotation."
    e_bed: "BED file of extra regions of interest (eg, non-coding regions)"
    gt: "Gene annotation table (eg, a refGene table in sqlite3 db format provided through the CEAS web, http://liulab.dfci.harvard.edu/CEAS/download.html)."
    name: "Experiment name. This will be used to name the output files. If an experiment name is not given, the stem of the input BED file name will be used instead (eg, if 'peaks.bed', 'peaks' will be used as a name.)"
    sizes: "Promoter (also dowsntream) sizes for ChIP region annotation. Comma-separated three values or a single value can be given. If a single value is given, it will be segmented into three equal fractions (ie, 3000 is equivalent to 1000,2000,3000), DEFAULT: 1000,2000,3000. WARNING: Values > 10000bp are automatically set to 10000bp."
    bi_sizes: "Bidirectional-promoter sizes for ChIP region annotation Comma-separated two values or a single value can be given. If a single value is given, it will be segmented into two equal fractions (ie, 5000 is equivalent to 2500,5000) DEFAULT: 2500,5000bp. WARNING: Values > 20000bp are automatically set to 20000bp."
    bg: "Run genome BG annotation again. WARNING: This flag is effective only if a WIG file is given through -w (--wig). Otherwise, ignored."
    span: "Span from TSS and TTS in the gene-centered annotation. ChIP regions within this range from TSS and TTS are considered when calculating the coverage rates in promoter and downstream, DEFAULT=3000bp"
    pf_res: "Wig profiling resolution, DEFAULT: 50bp. WARNING: Value smaller than the wig interval (resolution) may cause aliasing error."
    rel_dist: "Relative distance to TSS/TTS in wig profiling, DEFAULT: 3000bp"
    gn_groups: "Gene-groups of particular interest in wig profiling. Each gene group file must have gene names in the 1st column. The file names are separated by commas w/ no space (eg, --gn-groups=top10.txt,bottom10.txt)"
    gn_group_names: "The names of the gene groups in --gn-groups. The gene group names are separated by commas. (eg, --gn-group- names='top 10%,bottom 10%'). These group names appear in the legends of the wig profiling plots. If no group names given, the groups are represented as 'Group 1, Group2,...Group n'."
    g_name_two: "Whether or not use the 'name2' column of the gene annotation table when reading the gene IDs in the files given through --gn-groups. This flag is meaningful only with --gn-groups."
    dump: "Whether to save the raw profiles of near TSS, TTS, and gene body. The file names have a suffix of 'TSS', 'TTS', and 'gene' after the name."
    input_files: ""
  }
}