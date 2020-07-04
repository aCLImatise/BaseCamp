version 1.0

task ArvNormalize {
  input {
    String? extract
    Boolean? strip
  }
  command <<<
    arv-normalize \
      ~{if defined(extract) then ("--extract " +  '"' + extract + '"') else ""} \
      ~{true="--strip" false="" strip}
  >>>
  parameter_meta {
    extract: "The file to extract from the input manifest"
    strip: "Strip authorization tokens"
  }
}