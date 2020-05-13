version 1.0

task ErrCorrectWGenome.py {
  input {
    String? generateGenerate
    String? sequencesSequences
    String? usingUsing
    String? genomeGenome
    String? basesBases
    String? andAnd
    String? samSam
    String? alignmentAlignment
    File? fileFile
  }
  command <<<
    err_correct_w_genome.py \
      ~{generateGenerate} \
      ~{sequencesSequences} \
      ~{usingUsing} \
      ~{genomeGenome} \
      ~{basesBases} \
      ~{andAnd} \
      ~{samSam} \
      ~{alignmentAlignment} \
      ~{fileFile}
  >>>
}