version 1.0

task Mia {
  input {
    String? supplied_default_matrix
    Boolean? root_file_name
    Boolean? filename_use_ignoring
    String? r
  }
  command <<<
    mia \
      ~{if defined(supplied_default_matrix) then ("-s " +  '"' + supplied_default_matrix + '"') else ""} \
      ~{true="-m" false="" root_file_name} \
      ~{true="-I" false="" filename_use_ignoring} \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    supplied_default_matrix: "(if not supplied an default matrix is used)"
    root_file_name: "<root file name for maln output file(s)> (assembly.maln.iter)"
    filename_use_ignoring: "<filename of list of sequence IDs to use, ignoring all others>"
    r: ""
  }
}