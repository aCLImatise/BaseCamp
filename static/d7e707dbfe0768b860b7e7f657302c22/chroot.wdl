version 1.0

task Chroot {
  input {
    String? groups
    String? user_spec
    Boolean? skip_chdir
    String? option
    String new_root
  }
  command <<<
    chroot \
      ~{option} \
      ~{new_root} \
      ~{if defined(groups) then ("--groups " +  '"' + groups + '"') else ""} \
      ~{if defined(user_spec) then ("--userspec " +  '"' + user_spec + '"') else ""} \
      ~{true="--skip-chdir" false="" skip_chdir}
  >>>
  parameter_meta {
    groups: "specify supplementary groups as g1,g2,..,gN"
    user_spec: ":GROUP  specify user and group (ID or name) to use"
    skip_chdir: "do not change working directory to '/'"
    option: ""
    new_root: ""
  }
}