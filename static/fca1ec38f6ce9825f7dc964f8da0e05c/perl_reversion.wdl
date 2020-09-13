version 1.0

task Perlreversion {
  input {
    Boolean? man
    Boolean? bump
    Boolean? bump_revision
    Boolean? bump_version
    Boolean? bump_subversion
    Boolean? bump_alpha
    Int? set
    String? current
    Boolean? normal
    Boolean? numi_fy
    Boolean? stringify
    Boolean? dry_run
    Float one_dot_one
    Float one_dot_one_dot_one
    String updated_dot
    String version_dot
    String displayed_dot
  }
  command <<<
    perl_reversion \
      ~{one_dot_one} \
      ~{one_dot_one_dot_one} \
      ~{updated_dot} \
      ~{version_dot} \
      ~{displayed_dot} \
      ~{if (man) then "-man" else ""} \
      ~{if (bump) then "-bump" else ""} \
      ~{if (bump_revision) then "-bump-revision" else ""} \
      ~{if (bump_version) then "-bump-version" else ""} \
      ~{if (bump_subversion) then "-bump-subversion" else ""} \
      ~{if (bump_alpha) then "-bump-alpha" else ""} \
      ~{if defined(set) then ("-set " +  '"' + set + '"') else ""} \
      ~{if defined(current) then ("-current " +  '"' + current + '"') else ""} \
      ~{if (normal) then "-normal" else ""} \
      ~{if (numi_fy) then "-numify" else ""} \
      ~{if (stringify) then "-stringify" else ""} \
      ~{if (dry_run) then "-dryrun" else ""}
  >>>
  parameter_meta {
    man: "view man page for perl-reversion"
    bump: "make the smallest possible increment"
    bump_revision: "increment the specified version component"
    bump_version: ""
    bump_subversion: ""
    bump_alpha: ""
    set: "set the project version number"
    current: "specify the current version"
    normal: "print current version in a specific format OR"
    numi_fy: "force versions to be a specific format,"
    stringify: "with -set or -bump"
    dry_run: "just go through the motions, but don't\\nactually save files"
    one_dot_one: "=>  1.2"
    one_dot_one_dot_one: "=>  1.1.2"
    updated_dot: "\\\"-normal\\\""
    version_dot: "Alone, these options control how the current (found) version is"
    displayed_dot: "With \\\"-bump\\\" or \\\"-set\\\", also update version strings to have the"
  }
  output {
    File out_stdout = stdout()
  }
}