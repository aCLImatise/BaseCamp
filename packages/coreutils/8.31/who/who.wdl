version 1.0

task Who {
  input {
    Boolean? boot
    Boolean? dead
    Boolean? heading
    Boolean? login
    Boolean? lookup
    Boolean? only_hostname_user
    Boolean? process
    Boolean? count
    Boolean? runlevel
    Boolean? short
    Boolean? time
    Boolean? mesg
    Boolean? users
    Boolean? message
    Boolean? writable
  }
  command <<<
    who \
      ~{if (boot) then "--boot" else ""} \
      ~{if (dead) then "--dead" else ""} \
      ~{if (heading) then "--heading" else ""} \
      ~{if (login) then "--login" else ""} \
      ~{if (lookup) then "--lookup" else ""} \
      ~{if (only_hostname_user) then "-m" else ""} \
      ~{if (process) then "--process" else ""} \
      ~{if (count) then "--count" else ""} \
      ~{if (runlevel) then "--runlevel" else ""} \
      ~{if (short) then "--short" else ""} \
      ~{if (time) then "--time" else ""} \
      ~{if (mesg) then "--mesg" else ""} \
      ~{if (users) then "--users" else ""} \
      ~{if (message) then "--message" else ""} \
      ~{if (writable) then "--writable" else ""}
  >>>
  parameter_meta {
    boot: "time of last system boot"
    dead: "print dead processes"
    heading: "print line of column headings"
    login: "print system login processes"
    lookup: "attempt to canonicalize hostnames via DNS"
    only_hostname_user: "only hostname and user associated with stdin"
    process: "print active processes spawned by init"
    count: "all login names and number of users logged on"
    runlevel: "print current runlevel"
    short: "print only name, line, and time (default)"
    time: "print last system clock change"
    mesg: "add user's message status as +, - or ?"
    users: "list users logged in"
    message: "same as -T"
    writable: "same as -T"
  }
  output {
    File out_stdout = stdout()
  }
}