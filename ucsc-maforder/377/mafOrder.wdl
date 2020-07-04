version 1.0

task MafOrder {
  input {
    String maf_in
    String order_dot_lst
    String maf_out
  }
  command <<<
    mafOrder \
      ~{maf_in} \
      ~{order_dot_lst} \
      ~{maf_out}
  >>>
  parameter_meta {
    maf_in: ""
    order_dot_lst: ""
    maf_out: ""
  }
}