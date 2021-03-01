version 1.0

task NGSDAnnotateSV {
  input {
    File? in
    File? out
    String? ps
    Boolean? test
    Boolean? ignore_processing_system
    Boolean? debug
    Boolean? use_memory
    Boolean? changelog
    Boolean? tdx
  }
  command <<<
    NGSDAnnotateSV \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if defined(out) then ("-out " +  '"' + out + '"') else ""} \
      ~{if defined(ps) then ("-ps " +  '"' + ps + '"') else ""} \
      ~{if (test) then "-test" else ""} \
      ~{if (ignore_processing_system) then "-ignore_processing_system" else ""} \
      ~{if (debug) then "-debug" else ""} \
      ~{if (use_memory) then "-use_memory" else ""} \
      ~{if (changelog) then "--changelog" else ""} \
      ~{if (tdx) then "--tdx" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    in: "BEDPE file containing structural variants."
    out: "Output BEDPE file containing annotated structural variants."
    ps: "Processed sample name."
    test: "Uses the test database instead of on the production database.\\nDefault value: 'false'"
    ignore_processing_system: "Use all SVs for annotation (otherwise only SVs from good samples of the same processing system are used)\\nDefault value: 'false'"
    debug: "Provide additional information in STDOUT (e.g. query runtime)\\nDefault value: 'false'"
    use_memory: "Creates the temporary tables in memory.\\nDefault value: 'false'"
    changelog: "Prints changeloge and exits."
    tdx: "Writes a Tool Definition Xml file. The file name is the application name with the suffix '.tdx'."
  }
  output {
    File out_stdout = stdout()
    File out_out = "${in_out}"
  }
}