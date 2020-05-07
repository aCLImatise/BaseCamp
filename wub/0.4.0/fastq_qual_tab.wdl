version 1.0

task FastqQualTab.pyInputFastq {
  input {
    String tT
  }
  command <<<
    fastq_qual_tab.py input_fastq \
      ~{if defined(tT) then ("-t " +  '"' + tT + '"') else ""}
  >>>
}