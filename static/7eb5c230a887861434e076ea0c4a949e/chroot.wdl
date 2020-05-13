version 1.0

task Chroot {
  input {
    String groupsGroups
    String userUserSpec
    Boolean skipSkipChdir
  }
  command <<<
    chroot \
      ~{if defined(groupsGroups) then ("--groups " +  '"' + groupsGroups + '"') else ""} \
      ~{if defined(userUserSpec) then ("--userspec " +  '"' + userUserSpec + '"') else ""} \
      ~{true="--skip-chdir" false="" skipSkipChdir}
  >>>
}