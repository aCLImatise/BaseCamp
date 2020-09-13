version 1.0

task  {
  input {
    Int? length_string_nonzero
    Int? length_string_zero
    File? file_exists_block
    File? file_exists_character
    File? file_exists_directory
    File? file_exists
    File? file_exists_regular
    File? file_exists_setgroupid
    File? file_effective_group
    File? file_exists_l
    File? file_exists_sticky
    File? file_exists_h
    File? file_exists_modified
    File? file_exists_user
    File? file_exists_named
    File? file_exists_read
    File? file_exists_size
    File? file_exists_socket
    File? file_descriptor_fd
    File? file_exists_set
    File? file_exists_write
    File? file_exists_execute
    String equivalent_to_string
  }
  command <<<
    _ \
      ~{equivalent_to_string} \
      ~{if defined(length_string_nonzero) then ("-n " +  '"' + length_string_nonzero + '"') else ""} \
      ~{if defined(length_string_zero) then ("-z " +  '"' + length_string_zero + '"') else ""} \
      ~{if defined(file_exists_block) then ("-b " +  '"' + file_exists_block + '"') else ""} \
      ~{if defined(file_exists_character) then ("-c " +  '"' + file_exists_character + '"') else ""} \
      ~{if defined(file_exists_directory) then ("-d " +  '"' + file_exists_directory + '"') else ""} \
      ~{if defined(file_exists) then ("-e " +  '"' + file_exists + '"') else ""} \
      ~{if defined(file_exists_regular) then ("-f " +  '"' + file_exists_regular + '"') else ""} \
      ~{if defined(file_exists_setgroupid) then ("-g " +  '"' + file_exists_setgroupid + '"') else ""} \
      ~{if defined(file_effective_group) then ("-G " +  '"' + file_effective_group + '"') else ""} \
      ~{if defined(file_exists_l) then ("-h " +  '"' + file_exists_l + '"') else ""} \
      ~{if defined(file_exists_sticky) then ("-k " +  '"' + file_exists_sticky + '"') else ""} \
      ~{if defined(file_exists_h) then ("-L " +  '"' + file_exists_h + '"') else ""} \
      ~{if defined(file_exists_modified) then ("-N " +  '"' + file_exists_modified + '"') else ""} \
      ~{if defined(file_exists_user) then ("-O " +  '"' + file_exists_user + '"') else ""} \
      ~{if defined(file_exists_named) then ("-p " +  '"' + file_exists_named + '"') else ""} \
      ~{if defined(file_exists_read) then ("-r " +  '"' + file_exists_read + '"') else ""} \
      ~{if defined(file_exists_size) then ("-s " +  '"' + file_exists_size + '"') else ""} \
      ~{if defined(file_exists_socket) then ("-S " +  '"' + file_exists_socket + '"') else ""} \
      ~{if defined(file_descriptor_fd) then ("-t " +  '"' + file_descriptor_fd + '"') else ""} \
      ~{if defined(file_exists_set) then ("-u " +  '"' + file_exists_set + '"') else ""} \
      ~{if defined(file_exists_write) then ("-w " +  '"' + file_exists_write + '"') else ""} \
      ~{if defined(file_exists_execute) then ("-x " +  '"' + file_exists_execute + '"') else ""}
  >>>
  parameter_meta {
    length_string_nonzero: "the length of STRING is nonzero"
    length_string_zero: "the length of STRING is zero"
    file_exists_block: "FILE exists and is block special"
    file_exists_character: "FILE exists and is character special"
    file_exists_directory: "FILE exists and is a directory"
    file_exists: "FILE exists"
    file_exists_regular: "FILE exists and is a regular file"
    file_exists_setgroupid: "FILE exists and is set-group-ID"
    file_effective_group: "FILE exists and is owned by the effective group ID"
    file_exists_l: "FILE exists and is a symbolic link (same as -L)"
    file_exists_sticky: "FILE exists and has its sticky bit set"
    file_exists_h: "FILE exists and is a symbolic link (same as -h)"
    file_exists_modified: "FILE exists and has been modified since it was last read"
    file_exists_user: "FILE exists and is owned by the effective user ID"
    file_exists_named: "FILE exists and is a named pipe"
    file_exists_read: "FILE exists and read permission is granted"
    file_exists_size: "FILE exists and has a size greater than zero"
    file_exists_socket: "FILE exists and is a socket"
    file_descriptor_fd: "file descriptor FD is opened on a terminal"
    file_exists_set: "FILE exists and its set-user-ID bit is set"
    file_exists_write: "FILE exists and write permission is granted"
    file_exists_execute: "FILE exists and execute (or search) permission is granted"
    equivalent_to_string: "equivalent to -n STRING"
  }
  output {
    File out_stdout = stdout()
  }
}