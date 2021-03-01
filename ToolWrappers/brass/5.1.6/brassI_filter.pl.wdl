version 1.0

task BrassIFilterpl {
  input {
    Boolean? in_file
    File? outfile
    Boolean? tumour
    Boolean? trans_only
    Boolean? occurrences_only
    Boolean? cn_only
    Boolean? blat_only
    Boolean? seq_depth
    Boolean? seq_depth_threshold
    Boolean? distance_threshold
    Boolean? min_tumour_count_low
    Boolean? min_tumour_count_high
    Boolean? max_normal_count
    Boolean? max_np_sample_count
    Boolean? max_np_count
    Boolean? discard_if_repeats
    Boolean? bal_trans_field
    Boolean? in_v_field
    Boolean? occ_l_field
    Boolean? occ_h_field
    Boolean? cn_field
    Boolean? blat_field
    Boolean? occurs_distance
    Boolean? bal_distance
    Boolean? in_v_distance
    Boolean? cn_distance
    Boolean? cn_one_end_hit
    Boolean? as_cat
    Boolean? ngs
    Boolean? bb
    Boolean? ref
    Boolean? blat
    Boolean? min_identity
  }
  command <<<
    brassI_filter_pl \
      ~{if (in_file) then "-infile" else ""} \
      ~{if (outfile) then "-outfile" else ""} \
      ~{if (tumour) then "-tumour" else ""} \
      ~{if (trans_only) then "-trans_only" else ""} \
      ~{if (occurrences_only) then "-occurrences_only" else ""} \
      ~{if (cn_only) then "-cn_only" else ""} \
      ~{if (blat_only) then "-blat_only" else ""} \
      ~{if (seq_depth) then "-seq_depth" else ""} \
      ~{if (seq_depth_threshold) then "-seq_depth_threshold" else ""} \
      ~{if (distance_threshold) then "-distance_threshold" else ""} \
      ~{if (min_tumour_count_low) then "-min_tumour_count_low" else ""} \
      ~{if (min_tumour_count_high) then "-min_tumour_count_high" else ""} \
      ~{if (max_normal_count) then "-max_normal_count" else ""} \
      ~{if (max_np_sample_count) then "-max_np_sample_count" else ""} \
      ~{if (max_np_count) then "-max_np_count" else ""} \
      ~{if (discard_if_repeats) then "-discard_if_repeats" else ""} \
      ~{if (bal_trans_field) then "-bal_trans_field" else ""} \
      ~{if (in_v_field) then "-inv_field" else ""} \
      ~{if (occ_l_field) then "-occL_field" else ""} \
      ~{if (occ_h_field) then "-occH_field" else ""} \
      ~{if (cn_field) then "-cn_field" else ""} \
      ~{if (blat_field) then "-blat_field" else ""} \
      ~{if (occurs_distance) then "-occurs_distance" else ""} \
      ~{if (bal_distance) then "-bal_distance" else ""} \
      ~{if (in_v_distance) then "-inv_distance" else ""} \
      ~{if (cn_distance) then "-cn_distance" else ""} \
      ~{if (cn_one_end_hit) then "-cn_one_end_hit" else ""} \
      ~{if (as_cat) then "-ascat" else ""} \
      ~{if (ngs) then "-ngs" else ""} \
      ~{if (bb) then "-bb" else ""} \
      ~{if (ref) then "-ref" else ""} \
      ~{if (blat) then "-blat" else ""} \
      ~{if (min_identity) then "-minIdentity" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in_file: ": Name of the input brassI marked groups file"
    outfile: ": Name of the output file (bedpe filename extension will be appended if not supplied)"
    tumour: ": Name of the tumour sample"
    trans_only: ": run/rerun translocation flagging of the bedpe file"
    occurrences_only: ": run/rerun occurrences flagging of the bedpe file"
    cn_only: ": run/rerun near-copynumber-change flagging of the bedpe file"
    blat_only: ": run/rerun blat flagging of the bedpe file"
    seq_depth: ": filter flag. Sequence depth for this sample. (default = 30)"
    seq_depth_threshold: ": filter flag. Use min_tumour_count_high over this value and min_tumour_count_low otherwise. (default = 25)"
    distance_threshold: ": filter flag. Discard rearrangements, where chrH=chrL, that do not exceed this value (default = 100)"
    min_tumour_count_low: ": filter flag. Discard rearrangements which do not reach this number of reads in any of the tumour or metastatic samples involved\\n(low seq_depth) (default = 2)"
    min_tumour_count_high: ": filter flag. Discard rearrangements which do not reach this number of reads in any of the tumour or metastatic samples involved\\n(above seq_depth threshold) (default = 4)"
    max_normal_count: ": filter flag. Discard rearrangements which have more than this number of reads in the matched normal (default = 0)"
    max_np_sample_count: ": filter flag. Discard rearrangements which have more than this number of unmatched normal panel samples with reads  (default = 0)"
    max_np_count: ": filter flag. Discard rearrangements which have more than this number of reads in the unmatched normal panel samples (default = 0, +1 for foldback <= 5kb)"
    discard_if_repeats: ": filter flag. Discard rearrangements which are associated with known repeats (default = 0)"
    bal_trans_field: ": which number field of the bedpe output file the balanced translocation flag should go into (default = 21)"
    in_v_field: ": which number field of the bedpe output file the inversion flag should go into (default = 22)"
    occ_l_field: ": which number field of the bedpe output file the L occurrences flag should go into (default = 23)"
    occ_h_field: ": which number field of the bedpe output file the H occurrences flag should go into (default = 24)"
    cn_field: ": which number field of the bedpe output file the near-copynumber-change flag should go into (default = 25)"
    blat_field: ": which number field of the bedpe output file the L v H blat score should go into (default = 26)"
    occurs_distance: ": how far away breakpoint ends in 2 different rearrangements can be, to be declared a similar coordinate (default = 500)"
    bal_distance: ": how far away the breakpoint coordinates for 2 different rearrangements can be, to be declared a balanced translocation (default = 100000)"
    in_v_distance: ": how far away the breakpoint coordinates for 2 different rearrangements can be, to be declared a inversion (default = 1000)"
    cn_distance: ": how far away a copynumber chagepoint can be from a rearrangement for it to qualify as a changepoint hit (default = 100000)"
    cn_one_end_hit: ": If -cn_one_end_hit is present, call a hit even if only one end of the rearrangement is near a changepoint (default = not set)"
    as_cat: ": copynumber (cn) segments summary file for this sample - ASCAT. (optional)\\nLine Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
    ngs: ": copynumber (cn) segments summary file for this sample - NGS. (optional)\\nLine Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
    bb: ": copynumber (cn) segments summary file for this sample - Battenberg. (optional)\\nLine Format: unused,chr,start,end,normal_total_cn(optional),normal_minor_cn(optional),tumour_total_cn,tumour_minor_cn"
    ref: ": Blat of breakpoint range L against range H - fasta format Reference file (fai index file also present) to retrieve breakpoint range sequence from."
    blat: ": Blat of breakpoint range L against range H - blat script to use (default = blat)"
    min_identity: ": Blat of breakpoint range L against range H - minimum identity value to supply to blat (default = 95)"
  }
  output {
    File out_stdout = stdout()
    File out_outfile = "${in_outfile}"
  }
}