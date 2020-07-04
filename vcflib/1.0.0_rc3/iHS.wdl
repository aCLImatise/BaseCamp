version 1.0

task IHS {
  input {
    String? target
    String ihs
  }
  command <<<
    iHS \
      ~{ihs} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  parameter_meta {
    target: ""
    ihs: "--target 0,1,2,3,4,5,6,7 --file my.phased.vcf  \ --region chr1:1-1000 > STDOUT 2> STDERR          "
  }
}