version 1.0

task Go2chadoxml {
  input {
    Boolean xincludeXinclude
    Boolean xincludeXincludeStyle
    Boolean loadLoadTrace
    String profileProfile
  }
  command <<<
    go2chadoxml \
      ~{true="--xinclude" false="" xincludeXinclude} \
      ~{true="--xincludestyle" false="" xincludeXincludeStyle} \
      ~{true="--load-trace" false="" loadLoadTrace} \
      ~{if defined(profileProfile) then ("--profile " +  '"' + profileProfile + '"') else ""}
  >>>
}