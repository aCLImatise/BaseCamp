version 1.0

task Cpgplot {
  input {
    Boolean? window
    Boolean? min_len
    Boolean? min_oe
    Boolean? min_pc
    String displayed_dot
  }
  command <<<
    _cpgplot \
      ~{displayed_dot} \
      ~{if (window) then "-window" else ""} \
      ~{if (min_len) then "-minlen" else ""} \
      ~{if (min_oe) then "-minoe" else ""} \
      ~{if (min_pc) then "-minpc" else ""}
  >>>
  parameter_meta {
    window: "integer    [100] The percentage CG content and the\\nObserved frequency of CG is calculated\\nwithin a window whose size is set by this\\nparameter. The window is moved down the\\nsequence and these statistics are calculated\\nat each position that the window is moved\\nto. (Integer 1 or more)"
    min_len: "integer    [200] This sets the minimum length that a\\nCpG island has to be before it is reported.\\n(Integer 1 or more)"
    min_oe: "float      [0.6] This sets the minimum average observed\\nto expected ratio of C plus G to CpG in a\\nset of 10 windows that are required before a\\nCpG island is reported. (Number from 0.000\\nto 10.000)"
    min_pc: "float      [50.] This sets the minimum average\\npercentage of G plus C a set of 10 windows\\nthat are required before a CpG island is\\nreported. (Number from 0.000 to 100.000)"
    displayed_dot: "General qualifiers:"
  }
  output {
    File out_stdout = stdout()
  }
}