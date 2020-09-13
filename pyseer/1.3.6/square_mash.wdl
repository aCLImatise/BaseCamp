version 1.0

task SquareMash {
  input {
    Boolean? classic
  }
  command <<<
    square_mash \
      ~{if (classic) then "--classic" else ""}
  >>>
  parameter_meta {
    classic: "Output table in a format suitable for R_mds.pl"
  }
  output {
    File out_stdout = stdout()
  }
}