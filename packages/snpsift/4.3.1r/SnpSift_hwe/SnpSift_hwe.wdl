version 1.0

task SnpSiftHwe {
  input {
    Boolean? _be_quite
    Boolean? _be_verbose
    String? jar
    String java
    String h_we
    File? file_dot_vcf
  }
  command <<<
    SnpSift hwe \
      ~{java} \
      ~{h_we} \
      ~{file_dot_vcf} \
      ~{if (_be_quite) then "-q" else ""} \
      ~{if (_be_verbose) then "-v" else ""} \
      ~{if defined(jar) then ("-jar " +  '"' + jar + '"') else ""}
  >>>
  parameter_meta {
    _be_quite: ": Be quite"
    _be_verbose: ": Be verbose"
    jar: ""
    java: ""
    h_we: ""
    file_dot_vcf: ""
  }
  output {
    File out_stdout = stdout()
  }
}