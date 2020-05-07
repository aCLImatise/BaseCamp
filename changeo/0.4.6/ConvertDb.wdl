version 1.0

task ConvertDb.pyGenbank {
  input {
    Array[String]+ dD
    Array[String]+ oO
    String outdirOutdir
    String outOutName
    String formatFormat
    String molMol
    String productProduct
    String dbDb
    String infInf
    String organismOrganism
    String sexSex
    String isolateIsolate
    String tissueTissue
    String cellCellType
    String yY
    String labelLabel
    String cfCf
    String nfNf
    String ifIf
    Boolean allowAllowStop
    Boolean asAsIsId
    Boolean asAsIsCalls
    String alleleAlleleDelim
    Boolean asnAsn
    String sbtSbt
    String execExec
  }
  command <<<
    ConvertDb.py genbank \
      ~{if defined(dD) then ("-d " +  '"' + dD + '"') else ""} \
      ~{if defined(oO) then ("-o " +  '"' + oO + '"') else ""} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(outOutName) then ("--outname " +  '"' + outOutName + '"') else ""} \
      ~{if defined(formatFormat) then ("--format " +  '"' + formatFormat + '"') else ""} \
      ~{if defined(molMol) then ("--mol " +  '"' + molMol + '"') else ""} \
      ~{if defined(productProduct) then ("--product " +  '"' + productProduct + '"') else ""} \
      ~{if defined(dbDb) then ("--db " +  '"' + dbDb + '"') else ""} \
      ~{if defined(infInf) then ("--inf " +  '"' + infInf + '"') else ""} \
      ~{if defined(organismOrganism) then ("--organism " +  '"' + organismOrganism + '"') else ""} \
      ~{if defined(sexSex) then ("--sex " +  '"' + sexSex + '"') else ""} \
      ~{if defined(isolateIsolate) then ("--isolate " +  '"' + isolateIsolate + '"') else ""} \
      ~{if defined(tissueTissue) then ("--tissue " +  '"' + tissueTissue + '"') else ""} \
      ~{if defined(cellCellType) then ("--cell-type " +  '"' + cellCellType + '"') else ""} \
      ~{if defined(yY) then ("-y " +  '"' + yY + '"') else ""} \
      ~{if defined(labelLabel) then ("--label " +  '"' + labelLabel + '"') else ""} \
      ~{if defined(cfCf) then ("--cf " +  '"' + cfCf + '"') else ""} \
      ~{if defined(nfNf) then ("--nf " +  '"' + nfNf + '"') else ""} \
      ~{if defined(ifIf) then ("--if " +  '"' + ifIf + '"') else ""} \
      ~{true="--allow-stop" false="" allowAllowStop} \
      ~{true="--asis-id" false="" asAsIsId} \
      ~{true="--asis-calls" false="" asAsIsCalls} \
      ~{if defined(alleleAlleleDelim) then ("--allele-delim " +  '"' + alleleAlleleDelim + '"') else ""} \
      ~{true="--asn" false="" asnAsn} \
      ~{if defined(sbtSbt) then ("--sbt " +  '"' + sbtSbt + '"') else ""} \
      ~{if defined(execExec) then ("--exec " +  '"' + execExec + '"') else ""}
  >>>
}