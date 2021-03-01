version 1.0

task BamToSraSubpl {
  input {
    Directory? outdir
    Boolean? gnos_upload_server
    Boolean? study_reference_repository
    Boolean? type
    Boolean? man
    Boolean? var_5
    String brief
    File var_7
    Directory folder
    String var_9
    String var_10
    String only
    String optional
    String other
    String var_14
    String var_15
    String https
    String var_17
    String list
    String parameters
    String reference
    String var_21
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
    String var_34
    File var_35
    String names
    String read_group
    String lb
    String tag_dot
  }
  command <<<
    bam_to_sra_sub_pl \
      ~{brief} \
      ~{var_7} \
      ~{folder} \
      ~{var_9} \
      ~{var_10} \
      ~{only} \
      ~{optional} \
      ~{other} \
      ~{var_14} \
      ~{var_15} \
      ~{https} \
      ~{var_17} \
      ~{list} \
      ~{parameters} \
      ~{reference} \
      ~{var_21} \
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
      ~{var_34} \
      ~{var_35} \
      ~{names} \
      ~{read_group} \
      ~{lb} \
      ~{tag_dot} \
      ~{if (outdir) then "-outdir" else ""} \
      ~{if (gnos_upload_server) then "-gnos" else ""} \
      ~{if (study_reference_repository) then "-study" else ""} \
      ~{if (type) then "-type" else ""} \
      ~{if (man) then "-man" else ""} \
      ~{if (var_5) then "-help" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    outdir: "Folder to output result to."
    gnos_upload_server: "GNOS upload server, e.g.\\nhttps://gtrepo-ebi.annailabs.com"
    study_reference_repository: "Study reference in repository [icgc_pancancer]"
    type: "Only required if not encoded in readgroup LB tag.\\n[WGS|WXS|RNA-seq]\\nSee '-m' for details"
    man: "Full documentation."
    var_5: ""
    brief: ""
    var_7: ""
    folder: ""
    var_9: ""
    var_10: ""
    only: ""
    optional: ""
    other: ""
    var_14: ""
    var_15: ""
    https: ""
    var_17: ""
    list: ""
    parameters: ""
    reference: ""
    var_21: ""
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
    var_34: ""
    var_35: ""
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