version 1.0

task Chroot {
  input {
    Int? groups
    String? user_spec
    Boolean? skip_chdir
    String new_root
  }
  command <<<
    chroot \
      ~{new_root} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(user_spec) then ("--userspec " +  '"' + user_spec + '"') else ""} \
      ~{if (skip_chdir) then "--skip-chdir" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    groups: "specify supplementary groups as g1,g2,..,gN"
    user_spec: ":GROUP  specify user and group (ID or name) to use"
    skip_chdir: "do not change working directory to '/'"
    new_root: ""
  }
  output {
    File out_stdout = stdout()
  }
}