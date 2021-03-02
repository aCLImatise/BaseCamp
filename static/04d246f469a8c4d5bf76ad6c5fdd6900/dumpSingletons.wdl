version 1.0

task DumpSingletons {
  input {
    Boolean? attempt_locate_checkpoint
    Boolean? look_for_checkpoints
    Boolean? path_to_gkpstore
    Boolean? checkpoint_number_load
    Boolean? use_real_uids
    Boolean? make_mini_scaffolds
  }
  command <<<
    dumpSingletons \
      ~{if (attempt_locate_checkpoint) then "-p" else ""} \
      ~{if (look_for_checkpoints) then "-c" else ""} \
      ~{if (path_to_gkpstore) then "-g" else ""} \
      ~{if (checkpoint_number_load) then "-n" else ""} \
      ~{if (use_real_uids) then "-U" else ""} \
      ~{if (make_mini_scaffolds) then "-S" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    attempt_locate_checkpoint: "Attempt to locate the last checkpoint in directory 7-CGW."
    look_for_checkpoints: "Look for checkpoints in 'name'"
    path_to_gkpstore: "Path to gkpStore"
    checkpoint_number_load: "Checkpoint number to load"
    use_real_uids: "Use real UIDs for miniscaffolds, otherwise, UIDs start at 1230000"
    make_mini_scaffolds: "Do NOT make mini scaffolds."
  }
  output {
    File out_stdout = stdout()
  }
}