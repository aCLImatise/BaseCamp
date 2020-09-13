version 1.0

task CbMarkerAnnotate {
  input {
    Boolean? debug
    File? hprd
    File? cosmic
    Int geneannot_slash_hprd_molecular_class_zero_eight_one_nine_one_four_dot_txt
    Int geneannot_slash_hgnc_complete_set_zero_five_dec_one_seven_dot_txt
    Int gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv
    Int geneannot_slash_census_all_wed_dec_six_one_eight_three_five_five_four_two_zero_one_seven_dot_tsv
    Int geneannot_slash_hpo_frequent_seven_dec_one_seven_dot_txt
    String geneannot_slash_brain_span_genes_dot_csv
    Int geneannot_slash_mgi_hgnc_homologene_eight_dec_one_seven_dot_txt
    Int geneannot_slash_eur_express_seven_dec_one_seven_dot_txt
  }
  command <<<
    cbMarkerAnnotate \
      ~{geneannot_slash_hprd_molecular_class_zero_eight_one_nine_one_four_dot_txt} \
      ~{geneannot_slash_hgnc_complete_set_zero_five_dec_one_seven_dot_txt} \
      ~{gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv} \
      ~{geneannot_slash_census_all_wed_dec_six_one_eight_three_five_five_four_two_zero_one_seven_dot_tsv} \
      ~{geneannot_slash_hpo_frequent_seven_dec_one_seven_dot_txt} \
      ~{geneannot_slash_brain_span_genes_dot_csv} \
      ~{geneannot_slash_mgi_hgnc_homologene_eight_dec_one_seven_dot_txt} \
      ~{geneannot_slash_eur_express_seven_dec_one_seven_dot_txt} \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(hprd) then ("--hprd " +  '"' + hprd + '"') else ""} \
      ~{if defined(cosmic) then ("--cosmic " +  '"' + cosmic + '"') else ""}
  >>>
  parameter_meta {
    debug: "show debug messages"
    hprd: "location of HPRD file, default"
    cosmic: "location of COSMIC Census file, default"
    geneannot_slash_hprd_molecular_class_zero_eight_one_nine_one_four_dot_txt: "--hgnc=HGNC           location of HGNC file, default"
    geneannot_slash_hgnc_complete_set_zero_five_dec_one_seven_dot_txt: "--sfari=SFARI         location of SFARI file, default geneAnnot/SFARI-"
    gene_genes_export_zero_six_one_two_two_zero_one_seven_dot_csv: "--omim=OMIM           location of OMIM file, default geneAnnot/mim2gene.txt"
    geneannot_slash_census_all_wed_dec_six_one_eight_three_five_five_four_two_zero_one_seven_dot_tsv: "--hpo=HPO             location of HPO gene/disease/phenotype file, default"
    geneannot_slash_hpo_frequent_seven_dec_one_seven_dot_txt: "--lmd=LMD             location of BrainSpan LMD file, default"
    geneannot_slash_brain_span_genes_dot_csv: "--mgiOrtho=MGIORTHO   location of MGI Homologene file, default"
    geneannot_slash_mgi_hgnc_homologene_eight_dec_one_seven_dot_txt: "--eurexpress=EUREXPRESS"
    geneannot_slash_eur_express_seven_dec_one_seven_dot_txt: "--brainspanMouseDev=BRAINSPANMOUSEDEV"
  }
  output {
    File out_stdout = stdout()
  }
}