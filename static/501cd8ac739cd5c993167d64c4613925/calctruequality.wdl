version 1.0

task Calctruequality.sh {
  input {
    String variants_dot
  }
  command <<<
    calctruequality.sh \
      ~{variants_dot}
  >>>
  parameter_meta {
    variants_dot: "The format can be produced by CallVariants."
  }
}