version 1.0

task Touch {
  input {
    Boolean? change_only_access_time
    Boolean? no_create
    String? date
    Boolean? ignored
    Boolean? change_only_modification_time
    File? reference
    String? use_instead_current
    String? time
    String? option
  }
  command <<<
    touch \
      ~{option} \
      ~{true="-a" false="" change_only_access_time} \
      ~{true="--no-create" false="" no_create} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{true="-f" false="" ignored} \
      ~{true="-m" false="" change_only_modification_time} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(use_instead_current) then ("-t " +  '"' + use_instead_current + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""}
  >>>
  parameter_meta {
    change_only_access_time: "change only the access time"
    no_create: "do not create any files"
    date: "parse STRING and use it instead of current time"
    ignored: "(ignored)"
    change_only_modification_time: "change only the modification time"
    reference: "use this file's times instead of current time"
    use_instead_current: "use [[CC]YY]MMDDhhmm[.ss] instead of current time"
    time: "change the specified time: WORD is access, atime, or use: equivalent to -a WORD is modify or mtime: equivalent to -m"
    option: ""
  }
}