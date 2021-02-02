version 1.0

task BamToSraSubpl {
  input {
    Directory? outdir
    Boolean? g_gnos_upload
    Boolean? study_reference_repository
    Boolean? type
    Boolean? man
    String? o
    String? s
    Boolean? m
    Boolean? var_8
    Boolean? t
    Boolean? g
    String brief
    File var_12
    Directory folder
    String var_14
    String var_15
    String only
    String optional
    String other
    String var_19
    String var_20
    String https
    String my_donor_slash_tumour_slash
    String var_23
    String list
    String parameters
    String reference
    String var_27
    String to
    String upload
    String can
    String var_if
    String in
    String var_output
    String server
    String be
    String not
    String repository
    String result
    String encoded
    String var_40
    File var_41
    String names
    String read_group
    String lb
    String tag_dot
  }
  command <<<
    bam_to_sra_sub_pl \
      ~{brief} \
      ~{var_12} \
      ~{folder} \
      ~{var_14} \
      ~{var_15} \
      ~{only} \
      ~{optional} \
      ~{other} \
      ~{var_19} \
      ~{var_20} \
      ~{https} \
      ~{my_donor_slash_tumour_slash} \
      ~{var_23} \
      ~{list} \
      ~{parameters} \
      ~{reference} \
      ~{var_27} \
      ~{to} \
      ~{upload} \
      ~{can} \
      ~{var_if} \
      ~{in} \
      ~{var_output} \
      ~{server} \
      ~{be} \
      ~{not} \
      ~{repository} \
      ~{result} \
      ~{encoded} \
      ~{var_40} \
      ~{var_41} \
      ~{names} \
      ~{read_group} \
      ~{lb} \
      ~{tag_dot} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (g_gnos_upload) then "-gnos" else ""} \
      ~{if (study_reference_repository) then "-study" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if (m) then "-m" else ""} \
      ~{if (var_8) then "-help" else ""} \
      ~{if (t) then "-t" else ""} \
      ~{if (g) then "-g" else ""}
  >>>
  parameter_meta {
    outdir: "-o   Folder to output result to."
    g_gnos_upload: "-g   GNOS upload server, e.g.\\nhttps://gtrepo-ebi.annailabs.com"
    study_reference_repository: "-s   Study reference in repository [icgc_pancancer]"
    type: "-t   Only required if not encoded in readgroup LB tag.\\n[WGS|WXS|RNA-seq]\\nSee '-m' for details"
    man: "-m   Full documentation."
    o: ""
    s: ""
    m: ""
    var_8: ""
    t: ""
    g: ""
    brief: ""
    var_12: ""
    folder: ""
    var_14: ""
    var_15: ""
    only: ""
    optional: ""
    other: ""
    var_19: ""
    var_20: ""
    https: ""
    my_donor_slash_tumour_slash: ""
    var_23: ""
    list: ""
    parameters: ""
    reference: ""
    var_27: ""
    to: ""
    upload: ""
    can: ""
    var_if: ""
    in: ""
    var_output: ""
    server: ""
    be: ""
    not: ""
    repository: ""
    result: ""
    encoded: ""
    var_40: ""
    var_41: ""
    names: ""
    read_group: ""
    lb: ""
    tag_dot: ""
  }
  output {
    File out_stdout = stdout()
    Directory out_outdir = "${in_outdir}"
  }
}