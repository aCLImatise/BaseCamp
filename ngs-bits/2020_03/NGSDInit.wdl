version 1.0

task NGSDInit {
  input {
    File addAdd
    String forceForce
    Boolean testTest
    Boolean changelogChangelog
    Boolean tdxTdx
  }
  command <<<
    NGSDInit \
      ~{if defined(addAdd) then ("-add " +  '"' + addAdd + '"') else ""} \
      ~{if defined(forceForce) then ("-force " +  '"' + forceForce + '"') else ""} \
      ~{true="-test" false="" testTest} \
      ~{true="--changelog" false="" changelogChangelog} \
      ~{true="--tdx" false="" tdxTdx}
  >>>
}