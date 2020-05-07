version 1.0

task SplitFasta.py {
  input {
    String? scriptScript
    String? toTo
    String? splitSplit
    String? fastFastA
    String? sequencesSequences
    String? inIn
    String? aA
    String? fixedFixed
    String? numberNumber
    String? ofOf
    String? multipleMultiple
    File? filesFiles
  }
  command <<<
    split_fasta.py \
      ~{scriptScript} \
      ~{toTo} \
      ~{splitSplit} \
      ~{fastFastA} \
      ~{sequencesSequences} \
      ~{inIn} \
      ~{aA} \
      ~{fixedFixed} \
      ~{numberNumber} \
      ~{ofOf} \
      ~{multipleMultiple} \
      ~{filesFiles}
  >>>
}