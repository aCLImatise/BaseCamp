version 1.0

task Glpsol {
  input {
    Boolean mpsMps
    Boolean freeFreeMps
    Boolean lpLp
    Boolean glpGlp
    Boolean mathMath
    File modelModel
    File dataData
    File displayDisplay
    String seedSeed
    Boolean minMinCost
    Boolean maxMaxFlow
    Boolean cnfCnf
    Boolean simplexSimplex
    Boolean interiorInterior
    File readRead
    Boolean minMin
    Boolean maxMax
    Boolean scaleScale
    Boolean noNoScale
    File outputOutput
    File writeWrite
    File rangesRanges
    String tmTmLim
    String memMemLim
    Boolean checkCheck
    String nameName
    File wWMps
    File wWFreeMps
    File wlpWlp
    File wWGlp
    File wWCnf
    File logLog
    Boolean lufLuf
    Boolean btfBtf
    Boolean ftFt
    Boolean cbgCbg
    Boolean cgrCgr
    Boolean primalPrimal
    Boolean dualDual
    Boolean stdStd
    Boolean advAdv
    Boolean bibBib
    File iniIni
    Boolean steepSteep
    Boolean noNoSteep
    Boolean relaxRelax
    Boolean noNoRelax
    Boolean presolPresol
    Boolean noNoPresol
    Boolean exactExact
    Boolean xXCheck
    Boolean nordNord
    Boolean qmdQmd
    Boolean amdAmd
    Boolean symSymAmd
    Boolean noNoMip
    Boolean firstFirst
    Boolean lastLast
    Boolean mostMostF
    Boolean drDrTom
    Boolean pPCost
    Boolean dfsDfs
    Boolean bfsBfs
    Boolean bestBestP
    Boolean bestBestB
    Boolean intoIntoPt
    Boolean noNoIntoPt
    Boolean binBinARize
    Boolean fFPump
    Boolean proxyProxy
    Boolean gomoryGomory
    Boolean mirMir
    Boolean coverCover
    Boolean cliqueClique
    Boolean cutsCuts
    String mipMipGap
    Boolean minisatMinisat
    String objObjBnd
    String? optionsOptions
    File? filenameFilename
  }
  command <<<
    glpsol \
      ~{optionsOptions} \
      ~{true="--mps" false="" mpsMps} \
      ~{true="--freemps" false="" freeFreeMps} \
      ~{true="--lp" false="" lpLp} \
      ~{true="--glp" false="" glpGlp} \
      ~{true="--math" false="" mathMath} \
      ~{if defined(modelModel) then ("--model " +  '"' + modelModel + '"') else ""} \
      ~{if defined(dataData) then ("--data " +  '"' + dataData + '"') else ""} \
      ~{if defined(displayDisplay) then ("--display " +  '"' + displayDisplay + '"') else ""} \
      ~{if defined(seedSeed) then ("--seed " +  '"' + seedSeed + '"') else ""} \
      ~{true="--mincost" false="" minMinCost} \
      ~{true="--maxflow" false="" maxMaxFlow} \
      ~{true="--cnf" false="" cnfCnf} \
      ~{true="--simplex" false="" simplexSimplex} \
      ~{true="--interior" false="" interiorInterior} \
      ~{if defined(readRead) then ("--read " +  '"' + readRead + '"') else ""} \
      ~{true="--min" false="" minMin} \
      ~{true="--max" false="" maxMax} \
      ~{true="--scale" false="" scaleScale} \
      ~{true="--noscale" false="" noNoScale} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(writeWrite) then ("--write " +  '"' + writeWrite + '"') else ""} \
      ~{if defined(rangesRanges) then ("--ranges " +  '"' + rangesRanges + '"') else ""} \
      ~{if defined(tmTmLim) then ("--tmlim " +  '"' + tmTmLim + '"') else ""} \
      ~{if defined(memMemLim) then ("--memlim " +  '"' + memMemLim + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{if defined(nameName) then ("--name " +  '"' + nameName + '"') else ""} \
      ~{if defined(wWMps) then ("--wmps " +  '"' + wWMps + '"') else ""} \
      ~{if defined(wWFreeMps) then ("--wfreemps " +  '"' + wWFreeMps + '"') else ""} \
      ~{if defined(wlpWlp) then ("--wlp " +  '"' + wlpWlp + '"') else ""} \
      ~{if defined(wWGlp) then ("--wglp " +  '"' + wWGlp + '"') else ""} \
      ~{if defined(wWCnf) then ("--wcnf " +  '"' + wWCnf + '"') else ""} \
      ~{if defined(logLog) then ("--log " +  '"' + logLog + '"') else ""} \
      ~{true="--luf" false="" lufLuf} \
      ~{true="--btf" false="" btfBtf} \
      ~{true="--ft" false="" ftFt} \
      ~{true="--cbg" false="" cbgCbg} \
      ~{true="--cgr" false="" cgrCgr} \
      ~{true="--primal" false="" primalPrimal} \
      ~{true="--dual" false="" dualDual} \
      ~{true="--std" false="" stdStd} \
      ~{true="--adv" false="" advAdv} \
      ~{true="--bib" false="" bibBib} \
      ~{if defined(iniIni) then ("--ini " +  '"' + iniIni + '"') else ""} \
      ~{true="--steep" false="" steepSteep} \
      ~{true="--nosteep" false="" noNoSteep} \
      ~{true="--relax" false="" relaxRelax} \
      ~{true="--norelax" false="" noNoRelax} \
      ~{true="--presol" false="" presolPresol} \
      ~{true="--nopresol" false="" noNoPresol} \
      ~{true="--exact" false="" exactExact} \
      ~{true="--xcheck" false="" xXCheck} \
      ~{true="--nord" false="" nordNord} \
      ~{true="--qmd" false="" qmdQmd} \
      ~{true="--amd" false="" amdAmd} \
      ~{true="--symamd" false="" symSymAmd} \
      ~{true="--nomip" false="" noNoMip} \
      ~{true="--first" false="" firstFirst} \
      ~{true="--last" false="" lastLast} \
      ~{true="--mostf" false="" mostMostF} \
      ~{true="--drtom" false="" drDrTom} \
      ~{true="--pcost" false="" pPCost} \
      ~{true="--dfs" false="" dfsDfs} \
      ~{true="--bfs" false="" bfsBfs} \
      ~{true="--bestp" false="" bestBestP} \
      ~{true="--bestb" false="" bestBestB} \
      ~{true="--intopt" false="" intoIntoPt} \
      ~{true="--nointopt" false="" noNoIntoPt} \
      ~{true="--binarize" false="" binBinARize} \
      ~{true="--fpump" false="" fFPump} \
      ~{true="--proxy" false="" proxyProxy} \
      ~{true="--gomory" false="" gomoryGomory} \
      ~{true="--mir" false="" mirMir} \
      ~{true="--cover" false="" coverCover} \
      ~{true="--clique" false="" cliqueClique} \
      ~{true="--cuts" false="" cutsCuts} \
      ~{if defined(mipMipGap) then ("--mipgap " +  '"' + mipMipGap + '"') else ""} \
      ~{true="--minisat" false="" minisatMinisat} \
      ~{if defined(objObjBnd) then ("--objbnd " +  '"' + objObjBnd + '"') else ""} \
      ~{filenameFilename}
  >>>
}