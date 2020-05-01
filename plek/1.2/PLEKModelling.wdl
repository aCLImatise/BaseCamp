version 1.0

task PLEKModelling.py {
  input {
    String minlengthMinlength
    String isIsBalanced
    Boolean mrnaMrna
    Boolean lLNcrna
    Boolean prefixPrefix
    Boolean log2cLog2c
    Boolean log2gLog2g
    Boolean threadThread
    Boolean modelModel
    Boolean rangeRange
    Boolean minlengthMinlength
    Boolean isIsOutMsg
    Boolean isIsRmTempfile
    Boolean kK
    Boolean nNFold
    Boolean isIsBalanced
    Boolean rangeRange
    Boolean log2cLog2c
    Boolean rangeRange
  }
  command <<<
    PLEKModelling.py \
      ~{if defined(minlengthMinlength) then ("-minlength " +  '"' + minlengthMinlength + '"') else ""} \
      ~{if defined(isIsBalanced) then ("-isbalanced " +  '"' + isIsBalanced + '"') else ""} \
      ~{true="-mRNA" false="" mrnaMrna} \
      ~{true="-lncRNA" false="" lLNcrna} \
      ~{true="-prefix" false="" prefixPrefix} \
      ~{true="-log2c" false="" log2cLog2c} \
      ~{true="-log2g" false="" log2gLog2g} \
      ~{true="-thread" false="" threadThread} \
      ~{true="-model" false="" modelModel} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-minlength" false="" minlengthMinlength} \
      ~{true="-isoutmsg" false="" isIsOutMsg} \
      ~{true="-isrmtempfile" false="" isIsRmTempfile} \
      ~{true="-k" false="" kK} \
      ~{true="-nfold" false="" nNFold} \
      ~{true="-isbalanced" false="" isIsBalanced} \
      ~{true="-range" false="" rangeRange} \
      ~{true="-log2c" false="" log2cLog2c} \
      ~{true="-range" false="" rangeRange}
  >>>
}