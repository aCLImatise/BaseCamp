version 1.0

task RsatDownloadorganism {
  input {
    String? org
    String? ssh
    String download_organism
    String jacques_do_tv_and_otheldenatulbdotacdotbe
    String supported_organisms_server
    String rs_at_dot
    String wget_dot
    Float escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two
  }
  command <<<
    rsat download_organism \
      ~{download_organism} \
      ~{jacques_do_tv_and_otheldenatulbdotacdotbe} \
      ~{supported_organisms_server} \
      ~{rs_at_dot} \
      ~{wget_dot} \
      ~{escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two} \
      ~{if defined(org) then ("-org " +  '"' + org + '"') else ""} \
      ~{if defined(ssh) then ("-ssh " +  '"' + ssh + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    org: "\\"
    ssh: ":rsat_path_on_server"
    download_organism: "[1mVERSION[0m"
    jacques_do_tv_and_otheldenatulbdotacdotbe: "[1mCATEGORY[0m"
    supported_organisms_server: "The query to the remote server can also be restricted to a given taxon."
    rs_at_dot: "This differs from [33mdownload-organism[0m, which transfers the RSAT-formatted"
    wget_dot: "[1manonymous rsync[0m"
    escherichia_coli_gcf_zero_zero_zero_zero_zero_five_eight_four_five_dot_two_asm_five_eight_four_v_two: "The option -org can be used iteratively on teh command line to"
  }
  output {
    File out_stdout = stdout()
  }
}