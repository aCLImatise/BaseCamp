version 1.0

task OmeroFsImages {
  input {
    String styleStyle
    String limitLimit
    String offsetOffset
    String orderOrder
    Boolean archivedArchived
    Boolean extendedExtended
  }
  command <<<
    omero fs images \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{true="--archived" false="" archivedArchived} \
      ~{true="--extended" false="" extendedExtended}
  >>>
}