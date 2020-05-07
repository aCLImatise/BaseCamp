version 1.0

task Remock {
  input {
    File fileFile
    String randomRandom
    Boolean debugDebug
    File mockMock
    File xcelXcel
    Boolean testTest
    File nodesNodesPath
  }
  command <<<
    remock \
      ~{if defined(fileFile) then ("--file " +  '"' + fileFile + '"') else ""} \
      ~{if defined(randomRandom) then ("--random " +  '"' + randomRandom + '"') else ""} \
      ~{true="--debug" false="" debugDebug} \
      ~{if defined(mockMock) then ("--mock " +  '"' + mockMock + '"') else ""} \
      ~{if defined(xcelXcel) then ("--xcel " +  '"' + xcelXcel + '"') else ""} \
      ~{true="--test" false="" testTest} \
      ~{if defined(nodesNodesPath) then ("--nodespath " +  '"' + nodesNodesPath + '"') else ""}
  >>>
}