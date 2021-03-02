version 1.0

task Libtestpl {
  input {
    Boolean? genome
    File? std
    File? tst
    Boolean? cat
    Boolean? include_ns_defaule
    Boolean? unknown
    Boolean? rand
    Boolean? threads
  }
  command <<<
    lib_test_pl \
      ~{if (genome) then "-genome" else ""} \
      ~{if (std) then "-std" else ""} \
      ~{if (tst) then "-tst" else ""} \
      ~{if (cat) then "-cat" else ""} \
      ~{if (include_ns_defaule) then "-N" else ""} \
      ~{if (unknown) then "-unknown" else ""} \
      ~{if (rand) then "-rand" else ""} \
      ~{if (threads) then "-threads" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/edta:1.9.6--1"
  }
  parameter_meta {
    genome: "[file]  FASTA format genome sequence"
    std: "[file]  RepeatMasker .out file of the standard library"
    tst: "[file]  RepeatMasker .out file of the test library"
    cat: "[string]        Testing TE category. Use one of LTR|nonLTR|LINE|SINE|TIR|MITE|Helitron|Total|Classified"
    include_ns_defaule: "[0|1]   Include Ns in total length of the genome. Defaule: 0 (not include Ns)."
    unknown: "[0|1]   Include unknown annotations to the testing category. This should be used when\\nthe test library has no classification and you assume they all belong to the\\ntarget category specified by -cat. Default: 0 (not include unknowns)"
    rand: "[int]   A randum number used to identify the current run. (default: generate automatically)"
    threads: "[int]   Number of threads to run this program. Default: 4"
  }
  output {
    File out_stdout = stdout()
    File out_std = "${in_std}"
    File out_tst = "${in_tst}"
  }
}