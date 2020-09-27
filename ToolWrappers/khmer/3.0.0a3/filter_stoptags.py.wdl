version 1.0

task Filterstoptagspy {
  input {
    Boolean? info
    Int? k_size
    File? force
  }
  command <<<
    filter_stoptags_py \
      ~{if (info) then "--info" else ""} \
      ~{if defined(k_size) then ("--ksize " +  '"' + k_size + '"') else ""} \
      ~{if (force) then "--force" else ""}
  >>>
  parameter_meta {
    info: "print citation information"
    k_size: "k-mer size (default: 32)"
    force: "Overwrite output file if it exists (default: False)"
  }
  output {
    File out_stdout = stdout()
    File out_force = "${in_force}"
  }
}