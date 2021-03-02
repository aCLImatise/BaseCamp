version 1.0

task Stagitext2simplepl {
  input {
    Float? help
  }
  command <<<
    stag_itext2simple_pl \
      ~{if defined(help) then ("-HELP " +  '"' + help + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "processed in rearrange(), did you use a\\nnon-recognized parameter name ?  at /usr/local/lib/site_perl/5.26.2/Data/Stag/BaseGenerator.pm line 454."
  }
  output {
    File out_stdout = stdout()
  }
}