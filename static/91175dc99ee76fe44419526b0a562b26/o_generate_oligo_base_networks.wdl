version 1.0

task Ogenerateoligobasenetworks {
  command <<<
    o_generate_oligo_base_networks
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}