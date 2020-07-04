version 1.0

task Rm {
  input {
    Boolean? force
    Boolean? prompt_before_removal
    Boolean? prompt_once_removing
    Boolean? interactive
    Boolean? one_file_system
    Boolean? no_preserve_root
    Boolean? preserve_root
    Boolean? recursive
    Boolean? dir
    Boolean? verbose
    String? option
  }
  command <<<
    rm \
      ~{option} \
      ~{true="--force" false="" force} \
      ~{true="-i" false="" prompt_before_removal} \
      ~{true="-I" false="" prompt_once_removing} \
      ~{true="--interactive" false="" interactive} \
      ~{true="--one-file-system" false="" one_file_system} \
      ~{true="--no-preserve-root" false="" no_preserve_root} \
      ~{true="--preserve-root" false="" preserve_root} \
      ~{true="--recursive" false="" recursive} \
      ~{true="--dir" false="" dir} \
      ~{true="--verbose" false="" verbose}
  >>>
  parameter_meta {
    force: "ignore nonexistent files and arguments, never prompt"
    prompt_before_removal: "prompt before every removal"
    prompt_once_removing: "prompt once before removing more than three files, or when removing recursively; less intrusive than -i, while still giving protection against most mistakes"
    interactive: "[=WHEN]  prompt according to WHEN: never, once (-I), or always (-i); without WHEN, prompt always"
    one_file_system: "when removing a hierarchy recursively, skip any directory that is on a file system different from that of the corresponding command line argument"
    no_preserve_root: "do not treat '/' specially"
    preserve_root: "do not remove '/' (default)"
    recursive: "remove directories and their contents recursively"
    dir: "remove empty directories"
    verbose: "explain what is being done"
    option: ""
  }
}