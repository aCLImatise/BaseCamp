version 1.0

task Mobius.py {
  input {
    Boolean forceForceTrans
    String anAnNoTrans
    String readReadThresh
    String? spliceSpliceJunctions
    String? genomeGenomeFastA
  }
  command <<<
    Mobius.py \
      ~{spliceSpliceJunctions} \
      ~{true="-forceTrans" false="" forceForceTrans} \
      ~{if defined(anAnNoTrans) then ("-AnnoTrans " +  '"' + anAnNoTrans + '"') else ""} \
      ~{if defined(readReadThresh) then ("-readThresh " +  '"' + readReadThresh + '"') else ""} \
      ~{genomeGenomeFastA}
  >>>
}