version 1.0

task GetAllInfoNuclpl {
  command <<<
    get_all_info_nucl_pl
  >>>
  runtime {
    docker: "quay.io/biocontainers/bttoxin_digger:1.0.8--0"
  }
  output {
    File out_stdout = stdout()
  }
}