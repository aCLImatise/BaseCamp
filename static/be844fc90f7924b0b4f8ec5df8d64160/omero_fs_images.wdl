version 1.0

task OmeroFsImages {
  input {
    String? style
    String? limit
    String? offset
    String? order
    Boolean? archived
    Boolean? extended
  }
  command <<<
    omero fs images \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{true="--archived" false="" archived} \
      ~{true="--extended" false="" extended}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    limit: "maximum number of return values (default=25)"
    offset: "number of entries to skip (default=0)"
    order: "order of the rows returned"
    archived: "list only images with archived data"
    extended: "provide more details for each (slow)"
  }
}