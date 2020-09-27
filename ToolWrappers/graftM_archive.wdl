version 1.0

task GraftMArchive {
  input {
    Boolean? create
    Boolean? extract
    File? graft_m_package
    File? archive
    Boolean? force
    Int? verbosity
    File? log
  }
  command <<<
    graftM archive \
      ~{if (create) then "--create" else ""} \
      ~{if (extract) then "--extract" else ""} \
      ~{if defined(graft_m_package) then ("--graftm_package " +  '"' + graft_m_package + '"') else ""} \
      ~{if defined(archive) then ("--archive " +  '"' + archive + '"') else ""} \
      ~{if (force) then "--force" else ""} \
      ~{if defined(verbosity) then ("--verbosity " +  '"' + verbosity + '"') else ""} \
      ~{if defined(log) then ("--log " +  '"' + log + '"') else ""}
  >>>
  parameter_meta {
    create: "Create a new GraftM package archive"
    extract: "Extract a archived GraftM package into a regular one"
    graft_m_package: "Path to a GraftM package to inspect. GraftM will decorate the rooted tree within using the taxonomy within."
    archive: "Path to archived GraftM package, canonically ending in '.gpkg.tar.gz'"
    force: "Force overwrite the output archive/gpkg, even if one already exists with the same name"
    verbosity: "1 - 5, 1 being silent, 5 being noisy indeed. Default = 4 (default: 4)"
    log: "Output logging information to file"
  }
  output {
    File out_stdout = stdout()
    File out_log = "${in_log}"
  }
}