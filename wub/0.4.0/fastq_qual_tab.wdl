version 1.0

task FastqQualTab.pyInputFastq {
  input {
    String? t
  }
  command <<<
    fastq_qual_tab.py input_fastq \
      ~{if defined(t) then ("-t " +  '"' + t + '"') else ""}
  >>>
  parameter_meta {
    t: ""
  }
}