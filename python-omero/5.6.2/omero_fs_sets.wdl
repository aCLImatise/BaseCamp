version 1.0

task OmeroFsSets {
  input {
    String styleStyle
    String limitLimit
    String offsetOffset
    String orderOrder
    Boolean withoutWithoutImages
    Array[String]+ withWithTransfer
    Boolean checkCheck
    Boolean extendedExtended
  }
  command <<<
    omero fs sets \
      ~{if defined(styleStyle) then ("--style " +  '"' + styleStyle + '"') else ""} \
      ~{if defined(limitLimit) then ("--limit " +  '"' + limitLimit + '"') else ""} \
      ~{if defined(offsetOffset) then ("--offset " +  '"' + offsetOffset + '"') else ""} \
      ~{if defined(orderOrder) then ("--order " +  '"' + orderOrder + '"') else ""} \
      ~{true="--without-images" false="" withoutWithoutImages} \
      ~{if defined(withWithTransfer) then ("--with-transfer " +  '"' + withWithTransfer + '"') else ""} \
      ~{true="--check" false="" checkCheck} \
      ~{true="--extended" false="" extendedExtended}
  >>>
}