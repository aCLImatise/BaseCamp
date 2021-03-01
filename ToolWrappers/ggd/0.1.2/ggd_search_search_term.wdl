version 1.0

task GgdSearchSearchTerm {
  input {
    Int gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz
    Int gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
    Int gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz
    Int gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz
    Int gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_bed_do_tgz
    Int gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
    Int gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz
    Int gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
    Int gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz
    Int gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz
  }
  command <<<
    ggd search search_term \
      ~{gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz} \
      ~{gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz} \
      ~{gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz} \
      ~{gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz} \
      ~{gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_bed_do_tgz} \
      ~{gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz} \
      ~{gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz} \
      ~{gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz} \
      ~{gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz} \
      ~{gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-berg-blekhman-v1.bed.gz.tbi"
    gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-berg-blekhman-v1.compliment.bed.gz.tbi"
    gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-berg-v1.bed.gz.tbi"
    gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-berg-v1.compliment.bed.gz.tbi"
    gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-blekhman-v1.bed.gz.tbi"
    gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz: "grch37-autosomal-recessive-genes-blekhman-v1.compliment.bed.gz.tbi"
    gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz: "grch38-autosomal-recessive-genes-berg-blekhman-v1.bed.gz.tbi"
    gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz: "grch38-autosomal-recessive-genes-berg-blekhman-v1.compliment.bed.gz.tbi"
    gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz: "grch38-autosomal-recessive-genes-berg-v1.bed.gz.tbi"
    gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz: "grch38-autosomal-recessive-genes-berg-v1.compliment.bed.gz.tbi"
  }
  output {
    File out_stdout = stdout()
  }
}