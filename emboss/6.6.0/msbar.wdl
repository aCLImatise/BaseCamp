version 1.0

task Msbar {
  input {
    Boolean? count
    Boolean? menu_types_point
    Boolean? block
    Boolean? other_sequence
    Boolean? minimum
    Boolean? maximum
    String frame
  }
  command <<<
    msbar \
      ~{frame} \
      ~{if (count) then "-count" else ""} \
      ~{if (menu_types_point) then "-point" else ""} \
      ~{if (block) then "-block" else ""} \
      ~{if (other_sequence) then "-othersequence" else ""} \
      ~{if (minimum) then "-minimum" else ""} \
      ~{if (maximum) then "-maximum" else ""}
  >>>
  parameter_meta {
    count: "integer    [1] Number of times to perform the mutation\\noperations (Integer 0 or more)"
    menu_types_point: "menu       [0] Types of point mutations to perform\\n(Values: 0 (None); 1 (Any of the following);\\n2 (Insertions); 3 (Deletions); 4 (Changes);\\n5 (Duplications); 6 (Moves))"
    block: "menu       [0] Types of block mutations to perform\\n(Values: 0 (None); 1 (Any of the following);\\n2 (Insertions); 3 (Deletions); 4 (Changes);\\n5 (Duplications); 6 (Moves))"
    other_sequence: "seqall     [asis:N] If you require that the resulting\\nmutated sequence should not match a set of\\nother sequences, then you can specify that\\nset of sequences here. For example, if you\\nrequire that the mutated sequence should not\\nbe the same as the input sequence, enter\\nthe input sequence here. If you want the\\nresult to be different to previous results\\nof this program, specify the previous result\\nsequences here. The program will check that\\nthe result does not match the sequences\\nspecified here before writing it out. If a\\nmatch is found, then the mutation is started\\nagain with a fresh copy of the input\\nsequence. If, after 10 such retries, there\\nis still a match to the set of sequence\\ngiven here, then the matching mutated\\nsequence is written with a warning message."
    minimum: "integer    [1] Minimum size for a block mutation\\n(Integer 0 or more)"
    maximum: "integer    [10] Maximum size for a block mutation (Any\\ninteger value)"
    frame: "Advanced (Unprompted) qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}