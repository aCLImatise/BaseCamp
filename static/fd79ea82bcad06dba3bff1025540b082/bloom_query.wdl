version 1.0

task BloomQuery {
  input {
    Int? mer
    String bloom_query_cmdline
    String var_input
  }
  command <<<
    bloom_query \
      ~{bloom_query_cmdline} \
      ~{var_input} \
      ~{if defined(mer) then ("--mer " +  '"' + mer + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    mer: "*k-mer size"
    bloom_query_cmdline: ""
    var_input: ""
  }
  output {
    File out_stdout = stdout()
  }
}