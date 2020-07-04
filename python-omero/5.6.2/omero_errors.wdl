version 1.0

task OmeroErrors {
  input {
    Int? length
    String plugins
  }
  command <<<
    omero errors \
      ~{plugins} \
      ~{if defined(length) then ("--length " +  '"' + length + '"') else ""}
  >>>
  parameter_meta {
    length: "Length of message to print"
    plugins: "Limit to these plugins; otherwise all"
  }
}