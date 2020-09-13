version 1.0

task Mbfiltersites {
  input {
    String? padding_bp
    Array[String] filter_features
  }
  command <<<
    mb_filter_sites \
      ~{if defined(padding_bp) then ("--padding_bp " +  '"' + padding_bp + '"') else ""} \
      ~{if defined(filter_features) then ("--filter_features " +  '"' + filter_features + '"') else ""}
  >>>
  parameter_meta {
    padding_bp: "bp added to the annotation start and ends"
    filter_features: "comma separated list of gff features\\n"
  }
  output {
    File out_stdout = stdout()
  }
}