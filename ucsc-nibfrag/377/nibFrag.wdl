version 1.0

task NibFrag {
  input {
    Boolean maskedMasked
    Boolean hardHardMasked
    Boolean upperUpper
    String nameName
    String dbDbHeader
    String tbaTbaHeader
    File? fileFileNib
    String? startStart
    String? endEnd
    String? strandStrand
    String? outOutFa
  }
  command <<<
    nibFrag \
      ~{fileFileNib} \
      ~{true="-masked" false="" maskedMasked} \
      ~{true="-hardMasked" false="" hardHardMasked} \
      ~{true="-upper" false="" upperUpper} \
      ~{if defined(nameName) then ("-name " +  '"' + nameName + '"') else ""} \
      ~{if defined(dbDbHeader) then ("-dbHeader " +  '"' + dbDbHeader + '"') else ""} \
      ~{if defined(tbaTbaHeader) then ("-tbaHeader " +  '"' + tbaTbaHeader + '"') else ""} \
      ~{startStart} \
      ~{endEnd} \
      ~{strandStrand} \
      ~{outOutFa}
  >>>
}