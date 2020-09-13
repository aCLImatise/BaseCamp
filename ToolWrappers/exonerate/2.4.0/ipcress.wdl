version 1.0

task Ipcress {
  input {
    Boolean? help
    File? var_input
    String? sequence
    String? mismatch
    String? memory
    Boolean? pretty
    Boolean? seed
    Boolean? products
  }
  command <<<
    ipcress \
      ~{if (help) then "--help" else ""} \
      ~{if defined(var_input) then ("--input " +  '"' + var_input + '"') else ""} \
      ~{if defined(sequence) then ("--sequence " +  '"' + sequence + '"') else ""} \
      ~{if defined(mismatch) then ("--mismatch " +  '"' + mismatch + '"') else ""} \
      ~{if defined(memory) then ("--memory " +  '"' + memory + '"') else ""} \
      ~{if (pretty) then "--pretty" else ""} \
      ~{if (seed) then "--seed" else ""} \
      ~{if (products) then "--products" else ""}
  >>>
  parameter_meta {
    help: ""
    var_input: ""
    sequence: ""
    mismatch: ""
    memory: ""
    pretty: ""
    seed: ""
    products: ""
  }
  output {
    File out_stdout = stdout()
  }
}