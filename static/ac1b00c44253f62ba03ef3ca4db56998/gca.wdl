version 1.0

task Gca {
  input {
    String? bed
    String? gt
    String? span
    String? name
    String? gn_group
    String? g_name_two
  }
  command <<<
    gca \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(gt) then ("--gt " +  '"' + gt + '"') else ""} \
      ~{if defined(span) then ("--span " +  '"' + span + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(gn_group) then ("--gn-group " +  '"' + gn_group + '"') else ""} \
      ~{if defined(g_name_two) then ("--gname2 " +  '"' + g_name_two + '"') else ""}
  >>>
  parameter_meta {
    bed: "BED file of ChIP regions."
    gt: "Gene annotation table. This can be a sqlite3 local db file, BED file or genome version of UCSC. The BED file must have an extension of '.bed'"
    span: "Span in search of ChIP regions from TSS and TTS, DEFAULT=3000bp"
    name: "Experiment name. This will be used to name the output file. If an experiment name is not given, input BED file name will be used instead."
    gn_group: "A particular group of genes of interest. If a txt file with one column of gene names (eg RefSeq IDs in case of using a refGene table) is given, gca returns the gene- centered annotation of this particular gene group."
    g_name_two: "The gene names of --gn-group will be regarded as 'name2.' See the schema of the gene annotation table."
  }
}