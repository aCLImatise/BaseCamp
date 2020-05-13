version 1.0

task Rbdock {
  input {
    String inputInput
    String rootRoot
    String receptorReceptor
    String dockingDocking
    String numberNumber
    String protonProtonAte
    String deDeProtonAte
    String readRead
    String scoreScore
    String continueContinue
    String controlsControls
    String randomRandom
  }
  command <<<
    rbdock \
      ~{if defined(inputInput) then ("- input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(rootRoot) then ("- root " +  '"' + rootRoot + '"') else ""} \
      ~{if defined(receptorReceptor) then ("- receptor " +  '"' + receptorReceptor + '"') else ""} \
      ~{if defined(dockingDocking) then ("- docking " +  '"' + dockingDocking + '"') else ""} \
      ~{if defined(numberNumber) then ("- number " +  '"' + numberNumber + '"') else ""} \
      ~{if defined(protonProtonAte) then ("- protonate " +  '"' + protonProtonAte + '"') else ""} \
      ~{if defined(deDeProtonAte) then ("- deprotonate " +  '"' + deDeProtonAte + '"') else ""} \
      ~{if defined(readRead) then ("- read " +  '"' + readRead + '"') else ""} \
      ~{if defined(scoreScore) then ("- score " +  '"' + scoreScore + '"') else ""} \
      ~{if defined(continueContinue) then ("- continue " +  '"' + continueContinue + '"') else ""} \
      ~{if defined(controlsControls) then ("- controls " +  '"' + controlsControls + '"') else ""} \
      ~{if defined(randomRandom) then ("- random " +  '"' + randomRandom + '"') else ""}
  >>>
}