version 1.0

task Stagxml2itextpl {
  input {
    Float? help
  }
  command <<<
    stag_xml2itext_pl \
      ~{if defined(help) then ("-HELP " +  '"' + help + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    help: "processed in rearrange(), did you use a\\nnon-recognized parameter name ?  at /usr/local/lib/site_perl/5.26.2/Data/Stag/XMLParser.pm line 45."
  }
  output {
    File out_stdout = stdout()
  }
}