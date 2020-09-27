version 1.0

task Rm {
  input {
    Boolean? force
    Boolean? prompt_before_removal
    Boolean? prompt_removing_intrusive
    Boolean? interactive
    Boolean? one_file_system
    Boolean? no_preserve_root
    Boolean? preserve_root
    Boolean? recursive
    Boolean? dir
    Boolean? verbose
  }
  command <<<
    rm \
      ~{if (force) then "--force" else ""} \
      ~{if (prompt_before_removal) then "-i" else ""} \
      ~{if (prompt_removing_intrusive) then "-I" else ""} \
      ~{if (interactive) then "--interactive" else ""} \
      ~{if (one_file_system) then "--one-file-system" else ""} \
      ~{if (no_preserve_root) then "--no-preserve-root" else ""} \
      ~{if (preserve_root) then "--preserve-root" else ""} \
      ~{if (recursive) then "--recursive" else ""} \
      ~{if (dir) then "--dir" else ""} \
      ~{if (verbose) then "--verbose" else ""}
  >>>
  parameter_meta {
    force: "ignore nonexistent files and arguments, never prompt"
    prompt_before_removal: "prompt before every removal"
    prompt_removing_intrusive: "prompt once before removing more than three files, or\\nwhen removing recursively; less intrusive than -i,\\nwhile still giving protection against most mistakes"
    interactive: "[=WHEN]  prompt according to WHEN: never, once (-I), or\\nalways (-i); without WHEN, prompt always"
    one_file_system: "when removing a hierarchy recursively, skip any\\ndirectory that is on a file system different from\\nthat of the corresponding command line argument"
    no_preserve_root: "do not treat '/' specially"
    preserve_root: "[=all]  do not remove '/' (default);\\nwith 'all', reject any command line argument\\non a separate device from its parent"
    recursive: "remove directories and their contents recursively"
    dir: "remove empty directories"
    verbose: "explain what is being done"
  }
  output {
    File out_stdout = stdout()
  }
}