version 1.0

task CbMarkerAnnotate {
  input {
    Boolean? debug
    String? hprd
    String? hgnc
    String? s_far_i
    String? omim
    String? cosmic
    String? hpo
    String? lmd
    String? mgi_ortho
    String? eur_express
    String? brain_span_mouse_dev
    String in_fname
    String out_fname
  }
  command <<<
    cbMarkerAnnotate \
      ~{in_fname} \
      ~{out_fname} \
      ~{true="--debug" false="" debug} \
      ~{if defined(hprd) then ("--hprd " +  '"' + hprd + '"') else ""} \
      ~{if defined(hgnc) then ("--hgnc " +  '"' + hgnc + '"') else ""} \
      ~{if defined(s_far_i) then ("--sfari " +  '"' + s_far_i + '"') else ""} \
      ~{if defined(omim) then ("--omim " +  '"' + omim + '"') else ""} \
      ~{if defined(cosmic) then ("--cosmic " +  '"' + cosmic + '"') else ""} \
      ~{if defined(hpo) then ("--hpo " +  '"' + hpo + '"') else ""} \
      ~{if defined(lmd) then ("--lmd " +  '"' + lmd + '"') else ""} \
      ~{if defined(mgi_ortho) then ("--mgiOrtho " +  '"' + mgi_ortho + '"') else ""} \
      ~{if defined(eur_express) then ("--eurexpress " +  '"' + eur_express + '"') else ""} \
      ~{if defined(brain_span_mouse_dev) then ("--brainspanMouseDev " +  '"' + brain_span_mouse_dev + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    hprd: "location of HPRD file, default geneAnnot/HPRD_molecular_class_081914.txt"
    hgnc: "location of HGNC file, default geneAnnot/hgnc_complete_set_05Dec17.txt"
    s_far_i: "location of SFARI file, default geneAnnot/SFARI- Gene_genes_export06-12-2017.csv"
    omim: "location of OMIM file, default geneAnnot/mim2gene.txt"
    cosmic: "location of COSMIC Census file, default geneAnnot/Census_allWed_Dec__6_18_35_54_2017.tsv"
    hpo: "location of HPO gene/disease/phenotype file, default geneAnnot/hpo_frequent_7Dec17.txt"
    lmd: "location of BrainSpan LMD file, default geneAnnot/brainspan_genes.csv"
    mgi_ortho: "location of MGI Homologene file, default geneAnnot/mgi_HGNC_homologene_8Dec17.txt"
    eur_express: "location of Eurexpress file, default geneAnnot/eurexpress_7Dec17.txt"
    brain_span_mouse_dev: "location of brainspan Mouse Development ISH file, default geneAnnot/brainspanMouse_9Dec17.txt"
    in_fname: ""
    out_fname: ""
  }
}