version 1.0

task CbMarkerAnnotate {
  input {
    Boolean? debug
    File? hprd
    File? hgnc
    File? s_far_i
    File? cosmic
    File? hpo
    File? lmd
    File? mgi_ortho
    File? eur_express
    File? brain_span_mouse_dev
    Int gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv
  }
  command <<<
    cbMarkerAnnotate \
      ~{gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(hprd) then ("--hprd " +  '"' + hprd + '"') else ""} \
      ~{if defined(hgnc) then ("--hgnc " +  '"' + hgnc + '"') else ""} \
      ~{if defined(s_far_i) then ("--sfari " +  '"' + s_far_i + '"') else ""} \
      ~{if defined(cosmic) then ("--cosmic " +  '"' + cosmic + '"') else ""} \
      ~{if defined(hpo) then ("--hpo " +  '"' + hpo + '"') else ""} \
      ~{if defined(lmd) then ("--lmd " +  '"' + lmd + '"') else ""} \
      ~{if defined(mgi_ortho) then ("--mgiOrtho " +  '"' + mgi_ortho + '"') else ""} \
      ~{if defined(eur_express) then ("--eurexpress " +  '"' + eur_express + '"') else ""} \
      ~{if defined(brain_span_mouse_dev) then ("--brainspanMouseDev " +  '"' + brain_span_mouse_dev + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ucsc-cell-browser:1.0.0--pyhdfd78af_0"
  }
  parameter_meta {
    debug: "show debug messages"
    hprd: "location of HPRD file, default\\ngeneAnnot/HPRD_molecular_class_081914.txt"
    hgnc: "location of HGNC file, default\\ngeneAnnot/hgnc_complete_set_05Dec17.txt"
    s_far_i: "location of SFARI file, default geneAnnot/SFARI-"
    cosmic: "location of COSMIC Census file, default\\ngeneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv"
    hpo: "location of HPO gene/disease/phenotype file, default\\ngeneAnnot/hpo_frequent_7Dec17.txt"
    lmd: "location of BrainSpan LMD file, default\\ngeneAnnot/brainspan_genes.csv"
    mgi_ortho: "location of MGI Homologene file, default\\ngeneAnnot/mgi_HGNC_homologene_8Dec17.txt"
    eur_express: "location of Eurexpress file, default\\ngeneAnnot/eurexpress_7Dec17.txt"
    brain_span_mouse_dev: "location of brainspan Mouse Development ISH file,\\ndefault geneAnnot/brainspanMouse_9Dec17.txt\\n"
    gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv: "--omim=OMIM           location of OMIM file, default geneAnnot/mim2gene.txt"
  }
  output {
    File out_stdout = stdout()
  }
}