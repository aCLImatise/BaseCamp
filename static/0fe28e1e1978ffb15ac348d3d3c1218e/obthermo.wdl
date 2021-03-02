version 1.0

task Obthermo {
  input {
    Int? symm
    Int? n_rot
    String? dbd_t
    Boolean? kj
    File filename
  }
  command <<<
    obthermo \
      ~{filename} \
      ~{if defined(symm) then ("--symm " +  '"' + symm + '"') else ""} \
      ~{if defined(n_rot) then ("--nrot " +  '"' + n_rot + '"') else ""} \
      ~{if defined(dbd_t) then ("--dbdt " +  '"' + dbd_t + '"') else ""} \
      ~{if (kj) then "--kj" else ""}
  >>>
  runtime {
    docker: "quay.io/biocontainers/openbabel:3.1.1"
  }
  parameter_meta {
    symm: "override symmetry number used in input file"
    n_rot: "number of rotatable bonds for conformational entropy"
    dbd_t: "temperature derivative of second virial coefficient for cp calculation"
    kj: "output kJ/mol related units (default kcal/mol)"
    filename: ""
  }
  output {
    File out_stdout = stdout()
  }
}