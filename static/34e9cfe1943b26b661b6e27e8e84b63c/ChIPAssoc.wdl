version 1.0

task ChIPAssoc {
  input {
    File? bed
    File? db
    File? g_set
    Int? min
    Int? max
    File? name
    Int? lab
    File? rbg
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
      ~{if (g_name_two) then "--gname2" else ""}
  >>>
  parameter_meta {
    bed: "BED file of genomic coordinates (e.g. ChIP-Seq peaks).\\nThe center of each peak will be used to compute the\\ndistance from a gene."
    db: "Gene annotation table. This can be a sqlite3 local db\\nfile, BED file or genome version of UCSC. The BED file\\nmust have an extension of '.bed'"
    g_set: "Gene set to see the association with the genomic\\ncoordinates given through -b. Multiple gene sets can\\nbe given by repeatedly using this option (e.g. -g\\ngeneset1.txt -g geneset2.txt -g geneset3.txt). Genes\\nmust be given in a TXT file each line of which has a\\nrefseq accession ID or an official gene symbol (i.e. a\\nsingle-column TXT file)."
    min: "The lower limit of the distance to consider in\\nassociation analysis (in kb). Note that the lower and\\nupper limits must be reasonably apart to obtain a\\nmeaningful result. By default 0kb."
    max: "The upper limit of the distance to consider in\\nassociation analysis (in kb). Note that the lower and\\nupper limits must be reasonably apart to obtain a\\nmeaningful result. By default 200kb."
    name: "Experiment name. This will be used to name the output\\nfile. If an experiment name is not given, input BED\\nfile name will be used instead."
    lab: "Label for each gene set. Likewise, multiple gene set\\nlabels can be given by repeatedly using this option\\n(e.g. -l label1 -l label2 -l label3). If labels are\\nnot given, 'gene set' will be used by default."
    rbg: "Background gene set. If a set of genes is given using\\nthis option, the gene set will be used as background\\nor null set when running KS test. Otherwise, all\\nrefseq genes will be used as background. Background\\ngenes must be given in a TXT file each line of which\\nhas a refseq accession ID or an offical gene symbol\\n(i.e. a single-column TXT file)."
    g_name_two: "If this switch is on, gene or transcript IDs in files\\ngiven through -g will be considered as official gene\\nsymbols.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}