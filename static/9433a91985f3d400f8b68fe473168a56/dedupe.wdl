version 1.0

task Dedupe.sh {
  input {
    String? x_mx_two_zero_g
    String in
  }
  command <<<
    dedupe.sh \
      ~{in} \
      ~{if defined(x_mx_two_zero_g) then ("-Xmx20g " +  '"' + x_mx_two_zero_g + '"') else ""}
  >>>
  parameter_meta {
    x_mx_two_zero_g: "specify 20 gigs of RAM, and -Xmx200m will specify 200 megs."
    in: ""
  }
}