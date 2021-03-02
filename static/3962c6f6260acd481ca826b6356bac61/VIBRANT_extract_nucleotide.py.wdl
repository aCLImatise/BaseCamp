version 1.0

task VIBRANTExtractNucleotidepy {
  command <<<
    VIBRANT_extract_nucleotide_py
  >>>
  runtime {
    docker: "None"
  }
  output {
    File out_stdout = stdout()
  }
}