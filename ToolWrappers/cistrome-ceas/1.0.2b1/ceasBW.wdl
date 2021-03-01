version 1.0

task CeasBW {
  input {
    File? bed
    File? bigwig
    File? e_bed
    Int? gt
    File? name
    Int? sizes
    Int? bi_sizes
    Boolean? bg
    Int? span
    Int? pf_res
    Int? rel_dist
    File? gn_groups
    Int? gn_group_names
    Boolean? g_name_two
    Boolean? dump
    Int? length
    String input_files
  }
  command <<<
    ceasBW \
      ~{input_files} \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(bigwig) then ("--bigwig " +  '"' + bigwig + '"') else ""} \
      ~{if defined(e_bed) then ("--ebed " +  '"' + e_bed + '"') else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(sizes) then ("--sizes " +  '"' + sizes + '"') else ""} \
      ~{if defined(bi_sizes) then ("--bisizes " +  '"' + bi_sizes + '"') else ""} \
      ~{if (bg) then "--bg" else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(pf_res) then ("--pf-res " +  '"' + pf_res + '"') else ""} \
      ~{if defined(rel_dist) then ("--rel-dist " +  '"' + rel_dist + '"') else ""} \
      ~{if defined(gn_groups) then ("--gn-groups " +  '"' + gn_groups + '"') else ""} \
      ~{if defined(gn_group_names) then ("--gn-group-names " +  '"' + gn_group_names + '"') else ""} \
      ~{if (g_name_two) then "--gname2" else ""} \
      ~{if (dump) then "--dump" else ""} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "BED file of ChIP regions."
    bigwig: "BIGWIG file for either wig profiling or genome\\nbackground annotation. WARNING: --bg flag must be set\\nfor genome background re-annotation."
    e_bed: "BED file of extra regions of interest (eg, non-coding\\nregions)"
    gt: "Gene annotation table (eg, a refGene table in sqlite3\\ndb format provided through the CEAS web,\\nhttp://liulab.dfci.harvard.edu/CEAS/download.html)."
    name: "Experiment name. This will be used to name the output\\nfiles. If an experiment name is not given, the stem of\\nthe input BED file name will be used instead (eg, if\\n'peaks.bed', 'peaks' will be used as a name.)"
    sizes: "Promoter (also dowsntream) sizes for ChIP region\\nannotation. Comma-separated three values or a single\\nvalue can be given. If a single value is given, it\\nwill be segmented into three equal fractions (ie, 3000\\nis equivalent to 1000,2000,3000), DEFAULT:\\n1000,2000,3000. WARNING: Values > 10000bp are\\nautomatically set to 10000bp."
    bi_sizes: "Bidirectional-promoter sizes for ChIP region\\nannotation Comma-separated two values or a single\\nvalue can be given. If a single value is given, it\\nwill be segmented into two equal fractions (ie, 5000\\nis equivalent to 2500,5000) DEFAULT: 2500,5000bp.\\nWARNING: Values > 20000bp are automatically set to\\n20000bp."
    bg: "Run genome BG annotation again. WARNING: This flag is\\neffective only if a WIG file is given through -w\\n(--wig). Otherwise, ignored."
    span: "Span from TSS and TTS in the gene-centered annotation.\\nChIP regions within this range from TSS and TTS are\\nconsidered when calculating the coverage rates in\\npromoter and downstream, DEFAULT=3000bp"
    pf_res: "Wig profiling resolution, DEFAULT: 50bp. WARNING:\\nValue smaller than the wig interval (resolution) may\\ncause aliasing error."
    rel_dist: "Relative distance to TSS/TTS in wig profiling,\\nDEFAULT: 3000bp"
    gn_groups: "Gene-groups of particular interest in wig profiling.\\nEach gene group file must have gene names in the 1st\\ncolumn. The file names are separated by commas w/ no\\nspace (eg, --gn-groups=top10.txt,bottom10.txt)"
    gn_group_names: "The names of the gene groups in --gn-groups. The gene\\ngroup names are separated by commas. (eg, --gn-group-\\nnames='top 10%,bottom 10%'). These group names appear\\nin the legends of the wig profiling plots. If no group\\nnames given, the groups are represented as 'Group 1,\\nGroup2,...Group n'."
    g_name_two: "Whether or not use the 'name2' column of the gene\\nannotation table when reading the gene IDs in the\\nfiles given through --gn-groups. This flag is\\nmeaningful only with --gn-groups."
    dump: "Whether to save the raw profiles of near TSS, TTS, and\\ngene body. The file names have a suffix of 'TSS',\\n'TTS', and 'gene' after the name."
    length: "file contains lenth information of every chroms\\n"
    input_files: ""
  }
  output {
    File out_stdout = stdout()
  }
}