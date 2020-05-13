version 1.0

task XsvHeaders {
  input {
    Boolean justJustNames
    Boolean intersectIntersect
    String delimiterDelimiter
  }
  command <<<
    xsv headers \
      ~{true="--just-names" false="" justJustNames} \
      ~{true="--intersect" false="" intersectIntersect} \
      ~{if defined(delimiterDelimiter) then ("--delimiter " +  '"' + delimiterDelimiter + '"') else ""}
  >>>
}