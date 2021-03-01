version 1.0

task BamUniqpl {
  input {
    Boolean? bam
    Boolean? band
    File? out
    Boolean? man
  }
  command <<<
    bam_uniq_pl \
      ~{if (bam) then "--bam" else ""} \
      ~{if (band) then "--band" else ""} \
      ~{if (out) then "--out" else ""} \
      ~{if (man) then "--man" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    bam: "BAM file to extract unique and multi mappers from"
    band: "Process bands of (supposedly paired-end) reads sharing the same\\nname/id from a name-sorted BAM file. The reads of band are\\nconsidered unique mappers if and only if all of them are unique\\nmappers. In all other cases, all reads of a band are considered\\nmulti mappers. In a paired-end context this means that e.g. a read\\nmap uniquely, but its mate is a multi-mapper, both will be\\nconsideres multi-mappers."
    out: "Output path"
    man: "Prints the manual page and exits\\n"
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}