version 1.0

task Imsindel {
  input {
    Boolean? bam
  }
  command <<<
    imsindel \
      ~{if (bam) then "--bam" else ""}
  >>>
  parameter_meta {
    bam: "/path/to/foo.bam\\n--chr chromosome\\n--outd /path/to/outoput-dir\\n--indelsize maximal indel-size\\n--reffa /path/to/ref.fa\\n--baseq [20]\\n--mapq [20]\\n--within [3]\\n--pair-within [5]\\n--alt-read-depth [5]\\n--support-reads [3]\\n--clip-length [5]\\n--support-clip-length [5]\\n--glsearch [glsearch36]\\n--glsearch-mat [data/mydna.mat]\\n--mafft [mafft]\\n--samtools [samtools]\\n--temp [/temp]\\n--thread [1]\\n--output-consensus-seq /path/to/output-dir\\n--exclude-region /path/to/exclude-list\\n"
  }
  output {
    File out_stdout = stdout()
  }
}