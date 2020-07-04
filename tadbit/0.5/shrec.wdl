version 1.0

task Shrec.py {
  input {
    String? in_file
    Boolean? cmm
    Boolean? mtx
    Boolean? show
    Boolean? dist
    Boolean? verbose
    Boolean? strict
    String? scale
    String? fw
  }
  command <<<
    shrec.py \
      ~{if defined(in_file) then ("--infile " +  '"' + in_file + '"') else ""} \
      ~{true="--cmm" false="" cmm} \
      ~{true="--mtx" false="" mtx} \
      ~{true="--show" false="" show} \
      ~{true="--dist" false="" dist} \
      ~{true="--verbose" false="" verbose} \
      ~{true="--strict" false="" strict} \
      ~{if defined(scale) then ("--scale " +  '"' + scale + '"') else ""} \
      ~{if defined(fw) then ("--fw " +  '"' + fw + '"') else ""}
  >>>
  parameter_meta {
    in_file: "matrix file."
    cmm: "generate cmm and xyz files"
    mtx: "generate distance matrix file"
    show: "display matplotlib 3D plot"
    dist: "input is already a distance matrix"
    verbose: "print process info"
    strict: "Replace zeros by sum of the matrix divided by the square of the number of rows (recommended for binary matrices). By default it uses half the minimum value"
    scale: "[0] Average distance (nm) beetween two particles; by default no scalling is applied"
    fw: "[numpy] implementation to search shortest path using Floyd-Warshall can be one of \"numpy\", \"cython\" or \"cythonP\" (parallel version for very large matrices)"
  }
}