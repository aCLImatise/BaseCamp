version 1.0

task Hotspot3dHelp {
  input {
    String preprocessing
    String up_pro
    String prep
    String cal_roi
    String statis
    String an_no
    String trans
    String cosmic
    String prior
    String analysis
    String search
    String cluster
    String sig_clus
    String summary
    String visual
    String help
    String support
  }
  command <<<
    hotspot3d help \
      ~{preprocessing} \
      ~{up_pro} \
      ~{prep} \
      ~{cal_roi} \
      ~{statis} \
      ~{an_no} \
      ~{trans} \
      ~{cosmic} \
      ~{prior} \
      ~{analysis} \
      ~{search} \
      ~{cluster} \
      ~{sig_clus} \
      ~{summary} \
      ~{visual} \
      ~{help} \
      ~{support}
  >>>
  parameter_meta {
    preprocessing: "drugport  --  0) Parse drugport database (OPTIONAL)"
    up_pro: "--  1) Update proximity files"
    prep: "--  2) Run steps 2a-2f of preprocessing"
    cal_roi: "--  2a) Generate region of interest (ROI) information"
    statis: "--  2b) Calculate p_values for pairs of mutations"
    an_no: "--  2c) Add region of interest (ROI) annotation"
    trans: "--  2d) Add transcript annotation "
    cosmic: "--  2e) Add COSMIC annotation to proximity file"
    prior: "--  2f) Prioritization"
    analysis: "main      --  0) Run steps a-f of analysis (BETA)"
    search: "--  a) 3D mutation proximity searching"
    cluster: "--  b) Determine mutation-mutation and mutation-drug clusters"
    sig_clus: "--  c) Determine significance of clusters (BETA)"
    summary: "--  d) Summarize clusters"
    visual: "--  e) Visulization of 3D proximity"
    help: "--  this message"
    support: "For user support please email adamscott@wustl.edu"
  }
  output {
    File out_stdout = stdout()
  }
}