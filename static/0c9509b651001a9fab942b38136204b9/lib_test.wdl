version 1.0

task LibTest.pl {
  input {
    Boolean? genome
    Boolean? std
    Boolean? tst
    Boolean? cat
    Boolean? include_ns_total
    Boolean? unknown
    Boolean? rand
    Boolean? threads
  }
  command <<<
    lib-test.pl \
      ~{true="-genome" false="" genome} \
      ~{true="-std" false="" std} \
      ~{true="-tst" false="" tst} \
      ~{true="-cat" false="" cat} \
      ~{true="-N" false="" include_ns_total} \
      ~{true="-unknown" false="" unknown} \
      ~{true="-rand" false="" rand} \
      ~{true="-threads" false="" threads}
  >>>
  parameter_meta {
    genome: "[file]  FASTA format genome sequence"
    std: "[file]  RepeatMasker .out file of the standard library"
    tst: "[file]  RepeatMasker .out file of the test library"
    cat: "[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified"
    include_ns_total: "[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include Ns)."
    unknown: "[0|1]   Include unknown annotations to the testing category. This should be used when the test library has no classification and you assume they all belong to the target category specified by -cat. Default: 0 (not include unknowns)"
    rand: "[int]   A randum number used to identify the current run. (default: generate automatically)"
    threads: "[int]   Number of threads to run this program. Default: 4"
  }
}