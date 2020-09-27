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
    Boolean? delimit_entries_permitted
  }
  command <<<
    id \
      ~{if (ignore_compatibility_other) then "-a" else ""} \
      ~{if (context) then "--context" else ""} \
      ~{if (group) then "--group" else ""} \
      ~{if (groups) then "--groups" else ""} \
      ~{if (name) then "--name" else ""} \
      ~{if (real) then "--real" else ""} \
      ~{if (user) then "--user" else ""} \
      ~{if (delimit_entries_permitted) then "--zero" else ""}
  >>>
  parameter_meta {
    ignore_compatibility_other: "ignore, for compatibility with other versions"
    context: "print only the security context of the process"
    group: "print only the effective group ID"
    groups: "print all group IDs"
    name: "print a name instead of a number, for -ugG"
    real: "print the real ID instead of the effective ID, with -ugG"
    user: "print only the effective user ID"
    delimit_entries_permitted: "delimit entries with NUL characters, not whitespace;\\nnot permitted in default format"
  }
  output {
    File out_stdout = stdout()
  }
}