version 1.0

task Vawk {
  input {
    Int? var
    Int? col
    Boolean? header
    Boolean? debug
  }
  command <<<
    vawk \
      ~{if defined(var) then ("--var " +  '"' + var + '"') else ""} \
      ~{if defined(col) then ("--col " +  '"' + col + '"') else ""} \
      ~{if (header) then "--header" else ""} \
      ~{if (debug) then "--debug" else ""}
  >>>
  parameter_meta {
    var: "declare an external variable (e.g.: SIZE=10000)"
    col: "column of the INFO field [8]"
    header: "print VCF header"
    debug: "debugging level verbosity"
  }
  output {
    File out_stdout = stdout()
  }
}