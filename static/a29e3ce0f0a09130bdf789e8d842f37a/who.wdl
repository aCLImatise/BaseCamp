version 1.0

task Who {
  input {
    String? all
    String? boot
    String? dead
    String? heading
    String? login
    String? lookup
    String? hostname_user_associated
    String? process
    String? count
    String? runlevel
    String? short
    String? time
    String? mesg
    String? users
    String? message
    String? writable
    String? option
  }
  command <<<
    who \
      ~{option} \
      ~{if defined(all) then ("--all " +  '"' + all + '"') else ""} \
      ~{if defined(boot) then ("--boot " +  '"' + boot + '"') else ""} \
      ~{if defined(dead) then ("--dead " +  '"' + dead + '"') else ""} \
      ~{if defined(heading) then ("--heading " +  '"' + heading + '"') else ""} \
      ~{if defined(login) then ("--login " +  '"' + login + '"') else ""} \
      ~{if defined(lookup) then ("--lookup " +  '"' + lookup + '"') else ""} \
      ~{if defined(hostname_user_associated) then ("-m " +  '"' + hostname_user_associated + '"') else ""} \
      ~{if defined(process) then ("--process " +  '"' + process + '"') else ""} \
      ~{if defined(count) then ("--count " +  '"' + count + '"') else ""} \
      ~{if defined(runlevel) then ("--runlevel " +  '"' + runlevel + '"') else ""} \
      ~{if defined(short) then ("--short " +  '"' + short + '"') else ""} \
      ~{if defined(time) then ("--time " +  '"' + time + '"') else ""} \
      ~{if defined(mesg) then ("--mesg " +  '"' + mesg + '"') else ""} \
      ~{if defined(users) then ("--users " +  '"' + users + '"') else ""} \
      ~{if defined(message) then ("--message " +  '"' + message + '"') else ""} \
      ~{if defined(writable) then ("--writable " +  '"' + writable + '"') else ""}
  >>>
  parameter_meta {
    all: "as -b -d --login -p -r -t -T -u"
    boot: "of last system boot"
    dead: "dead processes"
    heading: "line of column headings"
    login: "system login processes"
    lookup: "to canonicalize hostnames via DNS"
    hostname_user_associated: "hostname and user associated with stdin"
    process: "active processes spawned by init"
    count: "login names and number of users logged on"
    runlevel: "current runlevel"
    short: "only name, line, and time (default)"
    time: "last system clock change"
    mesg: "user's message status as +, - or ?"
    users: "users logged in"
    message: "as -T"
    writable: "as -T"
    option: ""
  }
}