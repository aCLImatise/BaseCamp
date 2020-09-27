version 1.0

task GenConsFromPoapy {
  input {
    File? poa_path
    String? r
  }
  command <<<
    gen_cons_from_poa_py \
      ~{if defined(poa_path) then ("--poa_path " +  '"' + poa_path + '"') else ""} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    poa_path: ""
    r: ""
  }
  output {
    File out_stdout = stdout()
  }
}