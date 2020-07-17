version 1.0

task OmeroFsRepos {
  input {
    String? style
    Boolean? managed
  }
  command <<<
    omero fs repos \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{true="--managed" false="" managed}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    managed: "repos only managed repositories"
  }
}