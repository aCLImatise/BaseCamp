version 1.0

task TransformCoverageProfile {
  input {
    String? specify_the_cov
    String? indicate_type_want
  }
  command <<<
    transform-coverage-profile \
      ~{if defined(specify_the_cov) then ("-c " +  '"' + specify_the_cov + '"') else ""} \
      ~{if defined(indicate_type_want) then ("-t " +  '"' + indicate_type_want + '"') else ""}
  >>>
  parameter_meta {
    specify_the_cov: "Specify the cov"
    indicate_type_want: "Indicate what type of data transformation you want in the final file (default is log): scale --> Multiplication by 100 and log transform log --> Log transform X5 --> Multiplication by 5 X10 --> Multiplication by 10 SQR --> Square root We recommend using a log transformation for initial testing. Other transformations can be useful in cases where there is an extremely low range distribution of coverages and when coverage values are low"
  }
}