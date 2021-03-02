version 1.0

task Ccrewrite {
  input {
    Boolean? debug
    Int? level
    Boolean? write_pdb_file
    Boolean? rewrite
    String? assembly
    Boolean? break_into_debugger
    Boolean? throw_on_failure
    File? output_filename_rewritten
  }
  command <<<
    ccrewrite \
      ~{if (debug) then "--debug" else ""} \
      ~{if defined(level) then ("--level " +  '"' + level + '"') else ""} \
      ~{if (write_pdb_file) then "--writePDBFile" else ""} \
      ~{if (rewrite) then "--rewrite" else ""} \
      ~{if defined(assembly) then ("--assembly " +  '"' + assembly + '"') else ""} \
      ~{if (break_into_debugger) then "--breakIntoDebugger" else ""} \
      ~{if (throw_on_failure) then "--throwOnFailure" else ""} \
      ~{if defined(output_filename_rewritten) then ("--output " +  '"' + output_filename_rewritten + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    debug: "Use MDB or PDB debug information (default=true)."
    level: "Instrumentation level, 0 - 4 (default=4)."
    write_pdb_file: "Write MDB or PDB file (default=true)."
    rewrite: "Rewrite the assembly (default=true)."
    assembly: "Assembly to rewrite."
    break_into_debugger: "Break into debugger on contract failure."
    throw_on_failure: "Throw ContractException on contract failure."
    output_filename_rewritten: "Output filename of rewritten file."
  }
  output {
    File out_stdout = stdout()
    File out_output_filename_rewritten = "${in_output_filename_rewritten}"
  }
}