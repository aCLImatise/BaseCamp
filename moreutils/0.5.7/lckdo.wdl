version 1.0

task Lckdo {
  input {
    Boolean? lock_already_held
    String? same_w_wait
    Boolean? execute_program_directly
    String? set_fd_keep
    Boolean? create_lock_file
    Boolean? produce_output_held
    Boolean? lock_shared_read
    Boolean? lock_exclusive_write
    Boolean? test_lock_existence
    String lock_file
    String program
    String? arguments
  }
  command <<<
    lckdo \
      ~{lock_file} \
      ~{program} \
      ~{arguments} \
      ~{if (lock_already_held) then "-w" else ""} \
      ~{if defined(same_w_wait) then ("-W " +  '"' + same_w_wait + '"') else ""} \
      ~{if (execute_program_directly) then "-e" else ""} \
      ~{if defined(set_fd_keep) then ("-E " +  '"' + set_fd_keep + '"') else ""} \
      ~{if (create_lock_file) then "-n" else ""} \
      ~{if (produce_output_held) then "-q" else ""} \
      ~{if (lock_shared_read) then "-s" else ""} \
      ~{if (lock_exclusive_write) then "-x" else ""} \
      ~{if (test_lock_existence) then "-t" else ""}
  >>>
  parameter_meta {
    lock_already_held: "- if the lock is already held by another process,\\nwait for it to complete instead of failing immediately"
    same_w_wait: "- the same as -w but wait not more than sec seconds"
    execute_program_directly: "- execute the program directly, no fork/wait\\n(keeps extra open file descriptor)"
    set_fd_keep: "- set the fd# to keep open in -e case (implies -e)"
    create_lock_file: "- do not create the lock file if it does not exist"
    produce_output_held: "- produce no output if lock is already held"
    lock_shared_read: "- lock in shared (read) mode"
    lock_exclusive_write: "- lock in exclusive (write) mode (default)"
    test_lock_existence: "- test for lock existence (just prints pid if any with -q)\\n(implies -n)\\n"
    lock_file: ""
    program: ""
    arguments: ""
  }
  output {
    File out_stdout = stdout()
  }
}