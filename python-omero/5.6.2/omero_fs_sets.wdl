version 1.0

task OmeroFsSets {
  input {
    String? style
    String? limit
    String? offset
    String? order
    Boolean? without_images
    Array[String] with_transfer
    Boolean? check
    Boolean? extended
  }
  command <<<
    omero fs sets \
      ~{if defined(style) then ("--style " +  '"' + style + '"') else ""} \
      ~{if defined(limit) then ("--limit " +  '"' + limit + '"') else ""} \
      ~{if defined(offset) then ("--offset " +  '"' + offset + '"') else ""} \
      ~{if defined(order) then ("--order " +  '"' + order + '"') else ""} \
      ~{true="--without-images" false="" without_images} \
      ~{if defined(with_transfer) then ("--with-transfer " +  '"' + with_transfer + '"') else ""} \
      ~{true="--check" false="" check} \
      ~{true="--extended" false="" extended}
  >>>
  parameter_meta {
    style: "use alternative output style (default=sql)"
    limit: "maximum number of return values (default=25)"
    offset: "number of entries to skip (default=0)"
    order: "order of the rows returned"
    without_images: "list only sets without images (i.e. corrupt)"
    with_transfer: "list sets by their in-place import method"
    check: "verify the file checksums for each fileset (admins only)"
    extended: "provide more details for each (slow)"
  }
}