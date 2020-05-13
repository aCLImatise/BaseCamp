version 1.0

task OmeroFsRepos {
  input {
    String styleStyle
    Boolean managedManaged
  }
  command <<<
    omero fs repos \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{true="--managed" false="" managedManaged}
  >>>
}