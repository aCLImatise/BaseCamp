class: CommandLineTool
id: ggd_search_search_term.cwl
inputs:
- id: in_gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-berg-blekhman-v1.bed.gz.tbi
  type: long
  inputBinding:
    position: 0
- id: in_gr_ch_three_seven_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-berg-blekhman-v1.compliment.bed.gz.tbi
  type: long
  inputBinding:
    position: 1
- id: in_gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-berg-v1.bed.gz.tbi
  type: long
  inputBinding:
    position: 0
- id: in_gr_ch_three_seven_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-berg-v1.compliment.bed.gz.tbi
  type: long
  inputBinding:
    position: 1
- id: in_gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-blekhman-v1.bed.gz.tbi
  type: long
  inputBinding:
    position: 0
- id: in_gr_ch_three_seven_autosomal_recessive_genes_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
  doc: grch37-autosomal-recessive-genes-blekhman-v1.compliment.bed.gz.tbi
  type: long
  inputBinding:
    position: 1
- id: in_gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_bed_do_tgz
  doc: grch38-autosomal-recessive-genes-berg-blekhman-v1.bed.gz.tbi
  type: long
  inputBinding:
    position: 0
- id: in_gr_ch_three_eight_autosomal_recessive_genes_berg_ble_kh_man_v_one_dot_compliment_dot_bed_do_tgz
  doc: grch38-autosomal-recessive-genes-berg-blekhman-v1.compliment.bed.gz.tbi
  type: long
  inputBinding:
    position: 1
- id: in_gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_bed_do_tgz
  doc: grch38-autosomal-recessive-genes-berg-v1.bed.gz.tbi
  type: long
  inputBinding:
    position: 0
- id: in_gr_ch_three_eight_autosomal_recessive_genes_berg_v_one_dot_compliment_dot_bed_do_tgz
  doc: grch38-autosomal-recessive-genes-berg-v1.compliment.bed.gz.tbi
  type: long
  inputBinding:
    position: 1
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
hints: []
cwlVersion: v1.1
baseCommand:
- ggd
- search
- search_term
