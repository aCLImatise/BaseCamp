version 1.0

task VIBRANTExtractNucleotidepy {
  command <<<
    VIBRANT_extract_nucleotide_py
  >>>
  output {
    File out_stdout = stdout()
  }
}