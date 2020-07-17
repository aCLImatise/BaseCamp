version 1.0

task Id {
  input {
    Boolean? ignore_compatibility_other
    Boolean? context
    Boolean? group
    Boolean? groups
    Boolean? name
    Boolean? real
    Boolean? user
    Boolean? delimit_entries_whitespace
    String? option
  }
  command <<<
    id \
      ~{option} \
      ~{true="-a" false="" ignore_compatibility_other} \
      ~{true="--context" false="" context} \
      ~{true="--group" false="" group} \
      ~{true="--groups" false="" groups} \
      ~{true="--name" false="" name} \
      ~{true="--real" false="" real} \
      ~{true="--user" false="" user} \
      ~{true="--zero" false="" delimit_entries_whitespace}
  >>>
  parameter_meta {
    ignore_compatibility_other: "ignore, for compatibility with other versions"
    context: "print only the security context of the process"
    group: "print only the effective group ID"
    groups: "print all group IDs"
    name: "print a name instead of a number, for -ugG"
    real: "print the real ID instead of the effective ID, with -ugG"
    user: "print only the effective user ID"
    delimit_entries_whitespace: "delimit entries with NUL characters, not whitespace; not permitted in default format"
    option: ""
  }
}