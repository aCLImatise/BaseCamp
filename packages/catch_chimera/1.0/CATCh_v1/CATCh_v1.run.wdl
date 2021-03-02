version 1.0

task CATChV1run {
  input {
    Boolean? confirm
    Boolean? noexec
    Boolean? keep
    Boolean? nox_one_one
    Boolean? no_chown
    Directory? target
    Array[Int] tar
  }
  command <<<
    CATCh_v1_run \
      ~{if (confirm) then "--confirm" else ""} \
      ~{if (noexec) then "--noexec" else ""} \
      ~{if (keep) then "--keep" else ""} \
      ~{if (nox_one_one) then "--nox11" else ""} \
      ~{if (no_chown) then "--nochown" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""} \
      ~{if defined(tar) then ("--tar " +  '"' + tar + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/catch_chimera:1.0--0"
  }
  parameter_meta {
    confirm: "Ask before running embedded script"
    noexec: "Do not run embedded script"
    keep: "Do not erase target directory after running\\nthe embedded script"
    nox_one_one: "Do not spawn an xterm"
    no_chown: "Do not give the extracted files to the current user"
    target: "Extract in NewDirectory"
    tar: "Access the contents of the archive through the tar command"
  }
  output {
    File out_stdout = stdout()
  }
}