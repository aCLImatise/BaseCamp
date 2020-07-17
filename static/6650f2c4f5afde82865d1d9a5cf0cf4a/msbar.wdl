version 1.0

task Msbar {
  input {
    Boolean? count
    Boolean? menu_types_point_perform_values
    Boolean? block
  }
  command <<<
    msbar \
      ~{true="-count" false="" count} \
      ~{true="-point" false="" menu_types_point_perform_values} \
      ~{true="-block" false="" block}
  >>>
  parameter_meta {
    count: "integer    [1] Number of times to perform the mutation operations (Integer 0 or more)"
    menu_types_point_perform_values: "menu       [0] Types of point mutations to perform (Values: 0 (None); 1 (Any of the following); 2 (Insertions); 3 (Deletions); 4 (Changes); 5 (Duplications); 6 (Moves))"
    block: "menu       [0] Types of block mutations to perform (Values: 0 (None); 1 (Any of the following); 2 (Insertions); 3 (Deletions); 4 (Changes); 5 (Duplications); 6 (Moves))"
  }
}