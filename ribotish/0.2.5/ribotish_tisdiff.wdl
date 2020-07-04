version 1.0

task RibotishTisdiff {
  input {
    String? one
    String? two
    String? a
    String? b
    String? gene_annotation_file
    String? output_result_file
    String? t_is_one_para
    String? tis_two_para
    String? gene_format
    Int? max_nh
    Int? min_mapq
    Boolean? secondary
    Boolean? paired
    String? lone
    String? l_two
    Boolean? no_compatible
    String? compatible_mis
    String? chr_map
    Boolean? norm_comm
    Boolean? norman_no
    String? rnase_q
    String? scale_factor
    String? rna_scale
    Boolean? chi_two
    Boolean? beta_bin_om
    String? export
    String? plot_out
    String? fig_size
    String? plot_ma
    String? qi
    String? minimum_fold_default
    String? ip_th
    String? i_qth
    String? opt_h
    String? o_qth
    String? number_of_processes
    Boolean? verbose
  }
  command <<<
    ribotish tisdiff \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(a) then ("-a " +  '"' + a + '"') else ""} \
      ~{if defined(b) then ("-b " +  '"' + b + '"') else ""} \
      ~{if defined(gene_annotation_file) then ("-g " +  '"' + gene_annotation_file + '"') else ""} \
      ~{if defined(output_result_file) then ("-o " +  '"' + output_result_file + '"') else ""} \
      ~{if defined(t_is_one_para) then ("--tis1para " +  '"' + t_is_one_para + '"') else ""} \
      ~{if defined(tis_two_para) then ("--tis2para " +  '"' + tis_two_para + '"') else ""} \
      ~{if defined(gene_format) then ("--geneformat " +  '"' + gene_format + '"') else ""} \
      ~{if defined(max_nh) then ("--maxNH " +  '"' + max_nh + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{true="--secondary" false="" secondary} \
      ~{true="--paired" false="" paired} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{true="--nocompatible" false="" no_compatible} \
      ~{if defined(compatible_mis) then ("--compatiblemis " +  '"' + compatible_mis + '"') else ""} \
      ~{if defined(chr_map) then ("--chrmap " +  '"' + chr_map + '"') else ""} \
      ~{true="--normcomm" false="" norm_comm} \
      ~{true="--normanno" false="" norman_no} \
      ~{if defined(rnase_q) then ("--rnaseq " +  '"' + rnase_q + '"') else ""} \
      ~{if defined(scale_factor) then ("--scalefactor " +  '"' + scale_factor + '"') else ""} \
      ~{if defined(rna_scale) then ("--rnascale " +  '"' + rna_scale + '"') else ""} \
      ~{true="--chi2" false="" chi_two} \
      ~{true="--betabinom" false="" beta_bin_om} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(plot_out) then ("--plotout " +  '"' + plot_out + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(plot_ma) then ("--plotma " +  '"' + plot_ma + '"') else ""} \
      ~{if defined(qi) then ("--qi " +  '"' + qi + '"') else ""} \
      ~{if defined(minimum_fold_default) then ("-f " +  '"' + minimum_fold_default + '"') else ""} \
      ~{if defined(ip_th) then ("--ipth " +  '"' + ip_th + '"') else ""} \
      ~{if defined(i_qth) then ("--iqth " +  '"' + i_qth + '"') else ""} \
      ~{if defined(opt_h) then ("--opth " +  '"' + opt_h + '"') else ""} \
      ~{if defined(o_qth) then ("--oqth " +  '"' + o_qth + '"') else ""} \
      ~{if defined(number_of_processes) then ("-p " +  '"' + number_of_processes + '"') else ""} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    one: "Prediction results of group 1 TIS data"
    two: "Prediction results of group 2 TIS data"
    a: "Group 1 TIS enriched riboseq bam files, comma seperated"
    b: "Group 2 TIS enriched riboseq bam files, comma seperated"
    gene_annotation_file: "Gene annotation file"
    output_result_file: "Output result file"
    t_is_one_para: "Input offset parameter files for group 1 bam files"
    tis_two_para: "Input offset parameter files for group 2 bam files"
    gene_format: "Gene annotation file format (gtf, bed, gpd, gff, default: auto)"
    max_nh: "Max NH value allowed for bam alignments (default: 5)"
    min_mapq: "Min MapQ value required for bam alignments (default: 1)"
    secondary: "Use bam secondary alignments"
    paired: "Reads are paired end"
    lone: "Labels for group 1 TIS data"
    l_two: "Labels for group 2 TIS data"
    no_compatible: "Do not require reads compatible with transcript splice junctions"
    compatible_mis: "Missed bases allowed in reads compatibility check"
    chr_map: "Input chromosome id mapping table file if annotation chr ids are not same as chr ids in bam/fasta files"
    norm_comm: "Use common TISs instead of union TISs for normalization"
    norman_no: "Use only annotated TISs for normalization"
    rnase_q: "RNASeq count input"
    scale_factor: "Input TIS scale factor of 2/1 (default: auto)"
    rna_scale: "Input RNASeq scale factor of 2/1 (default: auto)"
    chi_two: "Use chisquare test instead of Fisher's exact test for mRNA referenced test"
    beta_bin_om: "Use beta-binom test instead of Fisher's exact test for mRNA referenced test"
    export: "Export count table for differential analysis with other tools"
    plot_out: "Scatter plot output pdf file"
    fig_size: "Scatter plot figure size (default: 8,8)"
    plot_ma: "TIS normalization MA plot output pdf file"
    qi: "Index of TIS q value, 0 based (default: 15)"
    minimum_fold_default: "Minimum fold change threshold (default: 1.5)"
    ip_th: "Input TIS p value threshold (default: 0.05)"
    i_qth: "Input TIS q value threshold (default: 0.05)"
    opt_h: "Output TIS diff p value threshold (default: 0.05)"
    o_qth: "Output TIS diff q value threshold (default: 0.05)"
    number_of_processes: "Number of processes"
    verbose: "Increase output verbosity"
  }
}