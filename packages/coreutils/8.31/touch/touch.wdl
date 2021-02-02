version 1.0

task Touch {
  input {
    Boolean? change_only_access_time
    Boolean? no_create
    String? date
    Boolean? ignored
    Boolean? change_only_modification_time
    File? reference
    String? use_current_time
    String? time
  }
  command <<<
    touch \
      ~{if (change_only_access_time) then "-a" else ""} \
      ~{if (no_create) then "--no-create" else ""} \
      ~{if defined(date) then ("--date " +  '"' + date + '"') else ""} \
      ~{if (ignored) then "-f" else ""} \
      ~{if (change_only_modification_time) then "-m" else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""} \
      ~{if defined(use_current_time) then ("-t " +  '"' + use_current_time + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""}
  >>>
  parameter_meta {
    change_only_access_time: "change only the access time"
    no_create: "do not create any files"
    date: "parse STRING and use it instead of current time"
    ignored: "(ignored)"
    change_only_modification_time: "change only the modification time"
    reference: "use this file's times instead of current time"
    use_current_time: "use [[CC]YY]MMDDhhmm[.ss] instead of current time"
    time: "change the specified time:\\nWORD is access, atime, or use: equivalent to -a\\nWORD is modify or mtime: equivalent to -m"
  }
  output {
    File out_stdout = stdout()
  }
}