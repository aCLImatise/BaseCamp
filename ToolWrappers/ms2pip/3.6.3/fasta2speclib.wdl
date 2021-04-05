version 1.0

task Fasta2speclib {
  input {
    File? name_given_file
    File? name_configuration_defaultfastaspeclibconfigjson
  }
  command <<<
    fasta2speclib \
      ~{if defined(name_given_file) then ("-o " +  '"' + name_given_file + '"') else ""} \
      ~{if defined(name_configuration_defaultfastaspeclibconfigjson) then ("-c " +  '"' + name_configuration_defaultfastaspeclibconfigjson + '"') else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/ms2pip:3.6.3--py38h4a8c8d9_0"
  }
  parameter_meta {
    name_given_file: "Name for output file(s) (if not given, derived from\\ninput file)"
    name_configuration_defaultfastaspeclibconfigjson: "Name of configuration json file (default:\\nfasta2speclib_config.json)\\n"
  }
  output {
    File out_stdout = stdout()
    File out_name_given_file = "${in_name_given_file}"
  }
}