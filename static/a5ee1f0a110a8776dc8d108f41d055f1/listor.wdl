version 1.0

task Listor {
  input {
    Boolean? operator
  }
  command <<<
    listor \
      ~{if (operator) then "-operator" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    operator: "menu       [OR] The following logical operators combine\\nthe sequences in the following ways:\\nOR - gives all that occur in one set or the\\nother\\nAND - gives only those which occur in both\\nsets\\nXOR - gives those which only occur in one\\nset or the other, but not in both\\nNOT - gives those which occur in the first\\nset except for those that also occur in the\\nsecond (Values: OR (OR - merger of both\\nsets); AND (AND - only those in both sets);\\nXOR (XOR - only those not in both sets); NOT\\n(NOT - those of the first set that are not\\nin the second))"
  }
  output {
    File out_stdout = stdout()
  }
}