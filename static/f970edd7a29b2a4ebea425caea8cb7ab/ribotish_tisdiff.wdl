version 1.0

task RibotishTisdiff {
  input {
    Int? one
    Int? two
    Int? group_tis_files
    File? output_result_file
    Int? t_is_one_para
    Int? tis_two_para
    File? gene_format
    Int? max_nh
    Int? min_mapq
    Boolean? secondary
    Boolean? paired
    Int? lone
    Int? l_two
    Boolean? no_compatible
    File? chr_map
    Boolean? norm_comm
    String? rnase_q
    Int? scale_factor
    Int? rna_scale
    Boolean? chi_two
    Boolean? beta_bin_om
    String? export
    File? plot_out
    Int? fig_size
    File? plot_ma
    Int? qi
    Float? minimum_fold_change
    Float? ip_th
    Float? i_qth
    Float? opt_h
    Float? o_qth
    Int? number_of_processes
    Boolean? verbose
    Boolean? b
    String junctions
    String normalization
  }
  command <<<
    ribotish tisdiff \
      ~{junctions} \
      ~{normalization} \
      ~{if defined(one) then ("-1 " +  '"' + one + '"') else ""} \
      ~{if defined(two) then ("-2 " +  '"' + two + '"') else ""} \
      ~{if defined(group_tis_files) then ("-a " +  '"' + group_tis_files + '"') else ""} \
      ~{if defined(output_result_file) then ("-o " +  '"' + output_result_file + '"') else ""} \
      ~{if defined(t_is_one_para) then ("--tis1para " +  '"' + t_is_one_para + '"') else ""} \
      ~{if defined(tis_two_para) then ("--tis2para " +  '"' + tis_two_para + '"') else ""} \
      ~{if defined(gene_format) then ("--geneformat " +  '"' + gene_format + '"') else ""} \
      ~{if defined(max_nh) then ("--maxNH " +  '"' + max_nh + '"') else ""} \
      ~{if defined(min_mapq) then ("--minMapQ " +  '"' + min_mapq + '"') else ""} \
      ~{if (secondary) then "--secondary" else ""} \
      ~{if (paired) then "--paired" else ""} \
      ~{if defined(lone) then ("--l1 " +  '"' + lone + '"') else ""} \
      ~{if defined(l_two) then ("--l2 " +  '"' + l_two + '"') else ""} \
      ~{if (no_compatible) then "--nocompatible" else ""} \
      ~{if defined(chr_map) then ("--chrmap " +  '"' + chr_map + '"') else ""} \
      ~{if (norm_comm) then "--normcomm" else ""} \
      ~{if defined(rnase_q) then ("--rnaseq " +  '"' + rnase_q + '"') else ""} \
      ~{if defined(scale_factor) then ("--scalefactor " +  '"' + scale_factor + '"') else ""} \
      ~{if defined(rna_scale) then ("--rnascale " +  '"' + rna_scale + '"') else ""} \
      ~{if (chi_two) then "--chi2" else ""} \
      ~{if (beta_bin_om) then "--betabinom" else ""} \
      ~{if defined(export) then ("--export " +  '"' + export + '"') else ""} \
      ~{if defined(plot_out) then ("--plotout " +  '"' + plot_out + '"') else ""} \
      ~{if defined(fig_size) then ("--figsize " +  '"' + fig_size + '"') else ""} \
      ~{if defined(plot_ma) then ("--plotma " +  '"' + plot_ma + '"') else ""} \
      ~{if defined(qi) then ("--qi " +  '"' + qi + '"') else ""} \
      ~{if defined(minimum_fold_change) then ("-f " +  '"' + minimum_fold_change + '"') else ""} \
      ~{if defined(ip_th) then ("--ipth " +  '"' + ip_th + '"') else ""} \
      ~{if defined(i_qth) then ("--iqth " +  '"' + i_qth + '"') else ""} \
      ~{if defined(opt_h) then ("--opth " +  '"' + opt_h + '"') else ""} \
      ~{if defined(o_qth) then ("--oqth " +  '"' + o_qth + '"') else ""} \
      ~{if defined(number_of_processes) then ("-p " +  '"' + number_of_processes + '"') else ""} \
      ~{if (verbose) then "--verbose" else ""} \
      ~{if (b) then "-b" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    one: "Prediction results of group 1 TIS data"
    two: "Prediction results of group 2 TIS data"
    group_tis_files: "Group 1 TIS enriched riboseq bam files, comma"
    output_result_file: "Output result file"
    t_is_one_para: "Input offset parameter files for group 1 bam files"
    tis_two_para: "Input offset parameter files for group 2 bam files"
    gene_format: "Gene annotation file format (gtf, bed, gpd, gff,\\ndefault: auto)"
    max_nh: "Max NH value allowed for bam alignments (default: 5)"
    min_mapq: "Min MapQ value required for bam alignments (default:\\n1)"
    secondary: "Use bam secondary alignments"
    paired: "Reads are paired end"
    lone: "Labels for group 1 TIS data"
    l_two: "Labels for group 2 TIS data"
    no_compatible: "Do not require reads compatible with transcript splice"
    chr_map: "Input chromosome id mapping table file if annotation\\nchr ids are not same as chr ids in bam/fasta files"
    norm_comm: "Use common TISs instead of union TISs for"
    rnase_q: "RNASeq count input"
    scale_factor: "Input TIS scale factor of 2/1 (default: auto)"
    rna_scale: "Input RNASeq scale factor of 2/1 (default: auto)"
    chi_two: "Use chisquare test instead of Fisher's exact test for\\nmRNA referenced test"
    beta_bin_om: "Use beta-binom test instead of Fisher's exact test for\\nmRNA referenced test"
    export: "Export count table for differential analysis with\\nother tools"
    plot_out: "Scatter plot output pdf file"
    fig_size: "Scatter plot figure size (default: 8,8)"
    plot_ma: "TIS normalization MA plot output pdf file"
    qi: "Index of TIS q value, 0 based (default: 15)"
    minimum_fold_change: "Minimum fold change threshold (default: 1.5)"
    ip_th: "Input TIS p value threshold (default: 0.05)"
    i_qth: "Input TIS q value threshold (default: 0.05)"
    opt_h: "Output TIS diff p value threshold (default: 0.05)"
    o_qth: "Output TIS diff q value threshold (default: 0.05)"
    number_of_processes: "Number of processes"
    verbose: "Increase output verbosity"
    b: ""
    junctions: "--compatiblemis COMPATIBLEMIS"
    normalization: "--normanno            Use only annotated TISs for normalization"
  }
  output {
    File out_stdout = stdout()
    File out_output_result_file = "${in_output_result_file}"
    File out_plot_out = "${in_plot_out}"
    File out_plot_ma = "${in_plot_ma}"
  }
}