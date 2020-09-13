version 1.0

task DaisySuiteTemplate {
  input {
    Boolean? same_as_dpr
    Boolean? recurse
    Boolean? preserve_symlinks_default
    Boolean? follow_all_symlinks
    Boolean? follow_symlinks_command
    Boolean? preserve_file_attributes
    Boolean? overwrite
    Boolean? prompt_before_overwrite
    Boolean? create_symlinks
    String cp
    String source_dot_dot_dot
    String dest
  }
  command <<<
    DaisySuite_template \
      ~{cp} \
      ~{source_dot_dot_dot} \
      ~{dest} \
      ~{if (same_as_dpr) then "-a" else ""} \
      ~{if (recurse) then "-R" else ""} \
      ~{if (preserve_symlinks_default) then "-d" else ""} \
      ~{if (follow_all_symlinks) then "-L" else ""} \
      ~{if (follow_symlinks_command) then "-H" else ""} \
      ~{if (preserve_file_attributes) then "-p" else ""} \
      ~{if (overwrite) then "-f" else ""} \
      ~{if (prompt_before_overwrite) then "-i" else ""} \
      ~{if (create_symlinks) then "-l" else ""}
  >>>
  parameter_meta {
    same_as_dpr: "Same as -dpR"
    recurse: "Recurse"
    preserve_symlinks_default: "Preserve symlinks (default if -R)"
    follow_all_symlinks: "Follow all symlinks"
    follow_symlinks_command: "Follow symlinks on command line"
    preserve_file_attributes: "Preserve file attributes if possible"
    overwrite: "Overwrite"
    prompt_before_overwrite: "Prompt before overwrite"
    create_symlinks: "Create (sym)links"
    cp: ""
    source_dot_dot_dot: ""
    dest: ""
  }
  output {
    File out_stdout = stdout()
  }
}