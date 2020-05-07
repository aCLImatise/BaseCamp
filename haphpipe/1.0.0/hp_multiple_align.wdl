version 1.0

task HpMultipleAlign {
  input {
    String seqsSeqs
    String dirDirList
    String refRefGtf
    String outOutAlign
    Boolean nucNuc
    Boolean aminoAmino
    Boolean clustalClustalOut
    Boolean phylipPhylipOut
    Boolean inputInputOrder
    Boolean reorderReorder
    Boolean treeTreeOut
    Boolean quietQuietMaffT
    String outdirOutdir
    String algoAlgo
    Boolean autoAuto
    Boolean sixSixMerPair
    Boolean globalGlobalPair
    Boolean localLocalPair
    Boolean genGenAfpAir
    Boolean fastFastAPair
    String weightWeightI
    String reReTree
    Int maxMaxIterate
    Boolean noNoScore
    Boolean memMemSave
    Boolean partPartTree
    Boolean dpDpPartTree
    Boolean fastFastApartTree
    String partPartSize
    String groupGroupSize
    String lopLop
    String lepLep
    String lLExp
    String lopLop
    String lLExp
    String blBl
    String jttJtt
    String tmTm
    String aaAaMatrix
    Boolean fFModel
    String nNCpu
    Boolean quietQuiet
    String logLogFile
    Boolean debugDebug
    Boolean fastFastAOnly
    Boolean alignAlignAll
  }
  command <<<
    hp_multiple_align \
      ~{if defined(seqsSeqs) then ("--seqs " +  '"' + seqsSeqs + '"') else ""} \
      ~{if defined(dirDirList) then ("--dir_list " +  '"' + dirDirList + '"') else ""} \
      ~{if defined(refRefGtf) then ("--ref_gtf " +  '"' + refRefGtf + '"') else ""} \
      ~{if defined(outOutAlign) then ("--out_align " +  '"' + outOutAlign + '"') else ""} \
      ~{true="--nuc" false="" nucNuc} \
      ~{true="--amino" false="" aminoAmino} \
      ~{true="--clustalout" false="" clustalClustalOut} \
      ~{true="--phylipout" false="" phylipPhylipOut} \
      ~{true="--inputorder" false="" inputInputOrder} \
      ~{true="--reorder" false="" reorderReorder} \
      ~{true="--treeout" false="" treeTreeOut} \
      ~{true="--quiet_mafft" false="" quietQuietMaffT} \
      ~{if defined(outdirOutdir) then ("--outdir " +  '"' + outdirOutdir + '"') else ""} \
      ~{if defined(algoAlgo) then ("--algo " +  '"' + algoAlgo + '"') else ""} \
      ~{true="--auto" false="" autoAuto} \
      ~{true="--sixmerpair" false="" sixSixMerPair} \
      ~{true="--globalpair" false="" globalGlobalPair} \
      ~{true="--localpair" false="" localLocalPair} \
      ~{true="--genafpair" false="" genGenAfpAir} \
      ~{true="--fastapair" false="" fastFastAPair} \
      ~{if defined(weightWeightI) then ("--weighti " +  '"' + weightWeightI + '"') else ""} \
      ~{if defined(reReTree) then ("--retree " +  '"' + reReTree + '"') else ""} \
      ~{if defined(maxMaxIterate) then ("--maxiterate " +  '"' + maxMaxIterate + '"') else ""} \
      ~{true="--noscore" false="" noNoScore} \
      ~{true="--memsave" false="" memMemSave} \
      ~{true="--parttree" false="" partPartTree} \
      ~{true="--dpparttree" false="" dpDpPartTree} \
      ~{true="--fastaparttree" false="" fastFastApartTree} \
      ~{if defined(partPartSize) then ("--partsize " +  '"' + partPartSize + '"') else ""} \
      ~{if defined(groupGroupSize) then ("--groupsize " +  '"' + groupGroupSize + '"') else ""} \
      ~{if defined(lopLop) then ("--lop " +  '"' + lopLop + '"') else ""} \
      ~{if defined(lepLep) then ("--lep " +  '"' + lepLep + '"') else ""} \
      ~{if defined(lLExp) then ("--lexp " +  '"' + lLExp + '"') else ""} \
      ~{if defined(lopLop) then ("--LOP " +  '"' + lopLop + '"') else ""} \
      ~{if defined(lLExp) then ("--LEXP " +  '"' + lLExp + '"') else ""} \
      ~{if defined(blBl) then ("--bl " +  '"' + blBl + '"') else ""} \
      ~{if defined(jttJtt) then ("--jtt " +  '"' + jttJtt + '"') else ""} \
      ~{if defined(tmTm) then ("--tm " +  '"' + tmTm + '"') else ""} \
      ~{if defined(aaAaMatrix) then ("--aamatrix " +  '"' + aaAaMatrix + '"') else ""} \
      ~{true="--fmodel" false="" fFModel} \
      ~{if defined(nNCpu) then ("--ncpu " +  '"' + nNCpu + '"') else ""} \
      ~{true="--quiet" false="" quietQuiet} \
      ~{if defined(logLogFile) then ("--logfile " +  '"' + logLogFile + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{true="--fastaonly" false="" fastFastAOnly} \
      ~{true="--alignall" false="" alignAlignAll}
  >>>
}