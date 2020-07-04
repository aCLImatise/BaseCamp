version 1.0

task _cpgplot {
  input {
    Boolean? window
    Boolean? min_len
    Boolean? min_oe
    Boolean? min_pc
  }
  command <<<
    _cpgplot \
      ~{true="-window" false="" window} \
      ~{true="-minlen" false="" min_len} \
      ~{true="-minoe" false="" min_oe} \
      ~{true="-minpc" false="" min_pc}
  >>>
  parameter_meta {
    window: "integer    [100] The percentage CG content and the Observed frequency of CG is calculated within a window whose size is set by this parameter. The window is moved down the sequence and these statistics are calculated at each position that the window is moved to. (Integer 1 or more)"
    min_len: "integer    [200] This sets the minimum length that a CpG island has to be before it is reported. (Integer 1 or more)"
    min_oe: "float      [0.6] This sets the minimum average observed to expected ratio of C plus G to CpG in a set of 10 windows that are required before a CpG island is reported. (Number from 0.000 to 10.000)"
    min_pc: "float      [50.] This sets the minimum average percentage of G plus C a set of 10 windows that are required before a CpG island is reported. (Number from 0.000 to 100.000)"
  }
}