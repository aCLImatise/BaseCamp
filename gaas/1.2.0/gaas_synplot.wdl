version 1.0

task GaasSynplot.pl {
  input {
    Boolean? plot_only
    Int? gen_code
    String? cds
    String? color_id
    String? color_cds_f
    String? color_cds_r
    String? f
    String perl
    String syn_plot_do_tpl
  }
  command <<<
    gaas_synplot.pl \
      ~{perl} \
      ~{syn_plot_do_tpl} \
      ~{true="--plotonly" false="" plot_only} \
      ~{if defined(gen_code) then ("--gencode " +  '"' + gen_code + '"') else ""} \
      ~{if defined(cds) then ("--cds " +  '"' + cds + '"') else ""} \
      ~{if defined(color_id) then ("--color_id " +  '"' + color_id + '"') else ""} \
      ~{if defined(color_cds_f) then ("--color_cds_f " +  '"' + color_cds_f + '"') else ""} \
      ~{if defined(color_cds_r) then ("--color_cds_r " +  '"' + color_cds_r + '"') else ""} \
      ~{if defined(f) then ("-f " +  '"' + f + '"') else ""}
  >>>
  parameter_meta {
    plot_only: "Flag: Draw plot only. Requires precomputed intermediate files with same file name prefix as supplied to -o parameter above."
    gen_code: "Genetic code for a.a. sequence translation. (Default: 4)"
    cds: "How to depict CDS direction. Allowed values: color, arrow. No quotation marks. (Default: color)"
    color_id: "Color corresponding to max value in color scale, used to show percentage ID for two CDSs connected by a stripe in the synteny plot."
    color_cds_f: "Color for forward-directed CDSs (if \"--cds color\" specified), or color of arrow (if \"--cds arrow\" specified)."
    color_cds_r: "Color for reverse-directed CDSs (if \"--cds color\" specified, otherwise ignored)"
    f: ""
    perl: ""
    syn_plot_do_tpl: ""
  }
}