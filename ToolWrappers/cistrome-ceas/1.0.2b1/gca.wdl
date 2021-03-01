version 1.0

task Gca {
  input {
    File? bed
    File? gt
    Int? span
    File? name
    File? gn_group
    Int? g_name_two
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
  runtime {
    docker: "None"
  }
  parameter_meta {
    bed: "BED file of ChIP regions."
    gt: "Gene annotation table. This can be a sqlite3 local db\\nfile, BED file or genome version of UCSC. The BED file\\nmust have an extension of '.bed'"
    span: "Span in search of ChIP regions from TSS and TTS,\\nDEFAULT=3000bp"
    name: "Experiment name. This will be used to name the output\\nfile. If an experiment name is not given, input BED\\nfile name will be used instead."
    gn_group: "A particular group of genes of interest. If a txt file\\nwith one column of gene names (eg RefSeq IDs in case of\\nusing a refGene table) is given, gca returns the gene-\\ncentered annotation of this particular gene group."
    g_name_two: "The gene names of --gn-group will be regarded as\\n'name2.' See the schema of the gene annotation table.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}