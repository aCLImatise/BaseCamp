version 1.0

task Pmmerge {
  input {
    Boolean? follow
    Boolean? command_line_only
    Boolean? x_dev
    Int? maxdepth
    String? min_depth
    Boolean? depth
    String? higher_priority_o
    File? name
    String? i_name
    File? match_path_pattern
    File? ipath
    File? regex
    File? type
    File? perm
    String? mtime
    String? mm_in
    File? newer
    File? user
    File? group
    Int? size
    Boolean? prune
    Boolean? print
    Boolean? print_zero
    File? exec
    Boolean? hl
    String find
    File? var_26
  }
  command <<<
    pm_merge \
      ~{find} \
      ~{var_26} \
      ~{if (follow) then "-follow" else ""} \
      ~{if (command_line_only) then "-H" else ""} \
      ~{if (x_dev) then "-xdev" else ""} \
      ~{if defined(maxdepth) then ("-maxdepth " +  '"' + maxdepth + '"') else ""} \
      ~{if defined(min_depth) then ("-mindepth " +  '"' + min_depth + '"') else ""} \
      ~{if (depth) then "-depth" else ""} \
      ~{if defined(higher_priority_o) then ("-a " +  '"' + higher_priority_o + '"') else ""} \
      ~{if defined(name) then ("-name " +  '"' + name + '"') else ""} \
      ~{if defined(i_name) then ("-iname " +  '"' + i_name + '"') else ""} \
      ~{if defined(match_path_pattern) then ("-path " +  '"' + match_path_pattern + '"') else ""} \
      ~{if defined(ipath) then ("-ipath " +  '"' + ipath + '"') else ""} \
      ~{if defined(regex) then ("-regex " +  '"' + regex + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if defined(perm) then ("-perm " +  '"' + perm + '"') else ""} \
      ~{if defined(mtime) then ("-mtime " +  '"' + mtime + '"') else ""} \
      ~{if defined(mm_in) then ("-mmin " +  '"' + mm_in + '"') else ""} \
      ~{if defined(newer) then ("-newer " +  '"' + newer + '"') else ""} \
      ~{if defined(user) then ("-user " +  '"' + user + '"') else ""} \
      ~{if defined(group) then ("-group " +  '"' + group + '"') else ""} \
      ~{if defined(size) then ("-size " +  '"' + size + '"') else ""} \
      ~{if (prune) then "-prune" else ""} \
      ~{if (print) then "-print" else ""} \
      ~{if (print_zero) then "-print0" else ""} \
      ~{if defined(exec) then ("-exec " +  '"' + exec + '"') else ""} \
      ~{if (hl) then "-HL" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    follow: "Follow symlinks"
    command_line_only: "...on command line only"
    x_dev: "Don't descend directories on other filesystems"
    maxdepth: "Descend at most N levels. -maxdepth 0 applies\\nactions to command line arguments only"
    min_depth: "Don't act on first N levels"
    depth: "Act on directory *after* traversing it"
    higher_priority_o: "higher priority than -o"
    name: "Match file name (w/o directory name) to PATTERN"
    i_name: "Case insensitive -name"
    match_path_pattern: "Match path to PATTERN"
    ipath: "Case insensitive -path"
    regex: "Match path to regex PATTERN"
    type: "File type is X (one of: f,d,l,b,c,...)"
    perm: "At least one mask bit (+MASK), all bits (-MASK),\\nor exactly MASK bits are set in file's mode"
    mtime: "mtime is greater than (+N), less than (-N),\\nor exactly N days in the past"
    mm_in: "mtime is greater than (+N), less than (-N),\\nor exactly N minutes in the past"
    newer: "mtime is more recent than FILE's"
    user: "/ID   File is owned by given user"
    group: "/ID  File is owned by given group"
    size: "[bck]    File size is N (c:bytes,k:kbytes,b:512 bytes(def.))\\n+/-N: file size is bigger/smaller than N"
    prune: "If current file is directory, don't descend into it"
    print: "Print file name"
    print_zero: "Print file name, NUL terminated"
    exec: "ARG ; Run CMD with all instances of {} replaced by\\nfile name. Fails if CMD exits with nonzero"
    hl: ""
    find: ""
    var_26: ""
  }
  output {
    File out_stdout = stdout()
  }
}