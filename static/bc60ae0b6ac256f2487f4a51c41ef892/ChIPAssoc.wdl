version 1.0

task ChIPAssoc {
  input {
    String? bed
    String? db
    String? g_set
    Int? min
    Int? max
    String? name
    String? lab
    String? rbg
    Boolean? g_name_two
  }
  command <<<
    ChIPAssoc \
      ~{if defined(bed) then ("--bed " +  '"' + bed + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(g_set) then ("--gset " +  '"' + g_set + '"') else ""} \
      ~{if defined(min) then ("--min " +  '"' + min + '"') else ""} \
      ~{if defined(max) then ("--max " +  '"' + max + '"') else ""} \
      ~{if defined(name) then ("--name " +  '"' + name + '"') else ""} \
      ~{if defined(lab) then ("--lab " +  '"' + lab + '"') else ""} \
      ~{if defined(rbg) then ("--rbg " +  '"' + rbg + '"') else ""} \
      ~{true="--gname2" false="" g_name_two}
  >>>
  parameter_meta {
    bed: "BED file of genomic coordinates (e.g. ChIP-Seq peaks). The center of each peak will be used to compute the distance from a gene."
    db: "Gene annotation table. This can be a sqlite3 local db file, BED file or genome version of UCSC. The BED file must have an extension of '.bed'"
    g_set: "Gene set to see the association with the genomic coordinates given through -b. Multiple gene sets can be given by repeatedly using this option (e.g. -g geneset1.txt -g geneset2.txt -g geneset3.txt). Genes must be given in a TXT file each line of which has a refseq accession ID or an official gene symbol (i.e. a single-column TXT file)."
    min: "The lower limit of the distance to consider in association analysis (in kb). Note that the lower and upper limits must be reasonably apart to obtain a meaningful result. By default 0kb."
    max: "The upper limit of the distance to consider in association analysis (in kb). Note that the lower and upper limits must be reasonably apart to obtain a meaningful result. By default 200kb."
    name: "Experiment name. This will be used to name the output file. If an experiment name is not given, input BED file name will be used instead."
    lab: "Label for each gene set. Likewise, multiple gene set labels can be given by repeatedly using this option (e.g. -l label1 -l label2 -l label3). If labels are not given, 'gene set' will be used by default."
    rbg: "Background gene set. If a set of genes is given using this option, the gene set will be used as background or null set when running KS test. Otherwise, all refseq genes will be used as background. Background genes must be given in a TXT file each line of which has a refseq accession ID or an offical gene symbol (i.e. a single-column TXT file)."
    g_name_two: "If this switch is on, gene or transcript IDs in files given through -g will be considered as official gene symbols."
  }
}