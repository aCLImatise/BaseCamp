version 1.0

task VIBRANTExtractProteinpy {
  command <<<
    VIBRANT_extract_protein_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}