version 1.0

task Pathchk {
  input {
    Boolean? check_most_posix
    Boolean? check_empty_leading
    Boolean? portability
    String? option
  }
  command <<<
    pathchk \
      ~{option} \
      ~{true="-p" false="" check_most_posix} \
      ~{true="-P" false="" check_empty_leading} \
      ~{true="--portability" false="" portability}
  >>>
  parameter_meta {
    check_most_posix: "check for most POSIX systems"
    check_empty_leading: "check for empty names and leading \"-\""
    portability: "check for all POSIX systems (equivalent to -p -P)"
    option: ""
  }
}