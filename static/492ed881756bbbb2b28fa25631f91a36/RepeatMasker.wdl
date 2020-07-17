version 1.0

task RepeatMasker {
  input {
    String var_0
    String nt__taan
    String var_2
    String _chr_atrich
  }
  command <<<
    RepeatMasker \
      ~{var_0} \
      ~{nt__taan} \
      ~{var_2} \
      ~{_chr_atrich}
  >>>
  parameter_meta {
    var_0: "perc perc perc  query    position in query     matching repeat      position in  repeat"
    nt__taan: "0.0 0.0 2.9 NT_001227 105436 105469  (2184) + (TAA)n    Simple        2   34    (0)  118  "
    var_2: "perc perc perc  query   position in query   matching repeat      position in  repeat      rat hum"
    _chr_atrich: "0.0  0.0 0.0 chr19 314125 314147 (58909378) +  AT_rich Low_complexity    1   23  (0)  378  -  -"
  }
}