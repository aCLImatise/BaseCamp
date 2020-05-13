version 1.0

task Id {
  input {
    Boolean aA
    Boolean contextContext
    Boolean groupGroup
    Boolean groupsGroups
    Boolean nameName
    Boolean realReal
    Boolean userUser
    Boolean zeroZero
  }
  command <<<
    id \
      ~{true="-a" false="" aA} \
      ~{true="--context" false="" contextContext} \
      ~{true="--group" false="" groupGroup} \
      ~{true="--groups" false="" groupsGroups} \
      ~{true="--name" false="" nameName} \
      ~{true="--real" false="" realReal} \
      ~{true="--user" false="" userUser} \
      ~{true="--zero" false="" zeroZero}
  >>>
}