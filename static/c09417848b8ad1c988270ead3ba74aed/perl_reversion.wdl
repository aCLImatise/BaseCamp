version 1.0

task Perlreversion {
  input {
    Boolean? man
    Boolean? bump
    Boolean? bump_revision
    Int? bump_subversion
    String? current
    Boolean? normal
    Boolean? numi_fy
    Boolean? stringify
    Boolean? dry_run
    String updated_dot
    String version_dot
    String displayed_dot
  }
  command <<<
    perl_reversion \
      ~{updated_dot} \
      ~{version_dot} \
      ~{displayed_dot} \
      ~{if (man) then "-man" else ""} \
      ~{if (bump) then "-bump" else ""} \
      ~{if (bump_revision) then "-bump-revision" else ""} \
      ~{if defined(bump_subversion) then ("-bump-subversion " +  '"' + bump_subversion + '"') else ""} \
      ~{if defined(current) then ("-current " +  '"' + current + '"') else ""} \
      ~{if (normal) then "-normal" else ""} \
      ~{if (numi_fy) then "-numify" else ""} \
      ~{if (stringify) then "-stringify" else ""} \
      ~{if (dry_run) then "-dryrun" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    man: "view man page for perl-reversion"
    bump: "make the smallest possible increment"
    bump_revision: "increment the specified version component"
    bump_subversion: "set the project version number"
    current: "specify the current version"
    normal: "print current version in a specific format OR"
    numi_fy: "force versions to be a specific format,"
    stringify: "with -set or -bump"
    dry_run: "just go through the motions, but don't\\nactually save files"
    updated_dot: "\\\"-normal\\\""
    version_dot: "Alone, these options control how the current (found) version is"
    displayed_dot: "With \\\"-bump\\\" or \\\"-set\\\", also update version strings to have the"
  }
  output {
    File out_stdout = stdout()
  }
}