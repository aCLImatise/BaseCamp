version 1.0

task  {
  input {
    Int? length_string_nonzero
    Int? length_string_zero
    File? file_exists_is_block
    File? file_exists_is_character
    File? file_exists_is_directory
    File? file_exists
    File? file_exists_is_file
    File? file_exists_is_setgroupid
    File? file_exists_group
    File? file_exists_l
    File? file_exists_set
    File? file_exists_h
    File? file_exists_modified
    File? file_exists_user
    File? file_exists_is_pipe
    File? file_exists_read
    File? file_exists_has
    File? file_exists_is_socket
    File? file_descriptor_fd
    File? file_exists_bit
    File? file_exists_write
    File? file_exists_execute
    String equivalent_n_string
  }
  command <<<
    _ \
      ~{equivalent_n_string} \
      ~{if defined(length_string_nonzero) then ("-n " +  '"' + length_string_nonzero + '"') else ""} \
      ~{if defined(length_string_zero) then ("-z " +  '"' + length_string_zero + '"') else ""} \
      ~{if defined(file_exists_is_block) then ("-b " +  '"' + file_exists_is_block + '"') else ""} \
      ~{if defined(file_exists_is_character) then ("-c " +  '"' + file_exists_is_character + '"') else ""} \
      ~{if defined(file_exists_is_directory) then ("-d " +  '"' + file_exists_is_directory + '"') else ""} \
      ~{if defined(file_exists) then ("-e " +  '"' + file_exists + '"') else ""} \
      ~{if defined(file_exists_is_file) then ("-f " +  '"' + file_exists_is_file + '"') else ""} \
      ~{if defined(file_exists_is_setgroupid) then ("-g " +  '"' + file_exists_is_setgroupid + '"') else ""} \
      ~{if defined(file_exists_group) then ("-G " +  '"' + file_exists_group + '"') else ""} \
      ~{if defined(file_exists_l) then ("-h " +  '"' + file_exists_l + '"') else ""} \
      ~{if defined(file_exists_set) then ("-k " +  '"' + file_exists_set + '"') else ""} \
      ~{if defined(file_exists_h) then ("-L " +  '"' + file_exists_h + '"') else ""} \
      ~{if defined(file_exists_modified) then ("-N " +  '"' + file_exists_modified + '"') else ""} \
      ~{if defined(file_exists_user) then ("-O " +  '"' + file_exists_user + '"') else ""} \
      ~{if defined(file_exists_is_pipe) then ("-p " +  '"' + file_exists_is_pipe + '"') else ""} \
      ~{if defined(file_exists_read) then ("-r " +  '"' + file_exists_read + '"') else ""} \
      ~{if defined(file_exists_has) then ("-s " +  '"' + file_exists_has + '"') else ""} \
      ~{if defined(file_exists_is_socket) then ("-S " +  '"' + file_exists_is_socket + '"') else ""} \
      ~{if defined(file_descriptor_fd) then ("-t " +  '"' + file_descriptor_fd + '"') else ""} \
      ~{if defined(file_exists_bit) then ("-u " +  '"' + file_exists_bit + '"') else ""} \
      ~{if defined(file_exists_write) then ("-w " +  '"' + file_exists_write + '"') else ""} \
      ~{if defined(file_exists_execute) then ("-x " +  '"' + file_exists_execute + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    length_string_nonzero: "the length of STRING is nonzero"
    length_string_zero: "the length of STRING is zero"
    file_exists_is_block: "FILE exists and is block special"
    file_exists_is_character: "FILE exists and is character special"
    file_exists_is_directory: "FILE exists and is a directory"
    file_exists: "FILE exists"
    file_exists_is_file: "FILE exists and is a regular file"
    file_exists_is_setgroupid: "FILE exists and is set-group-ID"
    file_exists_group: "FILE exists and is owned by the effective group ID"
    file_exists_l: "FILE exists and is a symbolic link (same as -L)"
    file_exists_set: "FILE exists and has its sticky bit set"
    file_exists_h: "FILE exists and is a symbolic link (same as -h)"
    file_exists_modified: "FILE exists and has been modified since it was last read"
    file_exists_user: "FILE exists and is owned by the effective user ID"
    file_exists_is_pipe: "FILE exists and is a named pipe"
    file_exists_read: "FILE exists and read permission is granted"
    file_exists_has: "FILE exists and has a size greater than zero"
    file_exists_is_socket: "FILE exists and is a socket"
    file_descriptor_fd: "file descriptor FD is opened on a terminal"
    file_exists_bit: "FILE exists and its set-user-ID bit is set"
    file_exists_write: "FILE exists and write permission is granted"
    file_exists_execute: "FILE exists and execute (or search) permission is granted"
    equivalent_n_string: "equivalent to -n STRING"
  }
  output {
    File out_stdout = stdout()
  }
}