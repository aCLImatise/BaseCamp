version 1.0

task MeltEHH {
  input {
    Int? region
    Boolean? version
    Boolean? contact
    Boolean? notes
    Boolean? support
    Boolean? contribution
    Int? target
  }
  command <<<
    meltEHH \
      ~{if defined(region) then ("--region " +  '"' + region + '"') else ""} \
      ~{if (version) then "-Version" else ""} \
      ~{if (contact) then "-Contact" else ""} \
      ~{if (notes) then "-Notes" else ""} \
      ~{if (support) then "-Support" else ""} \
      ~{if (contribution) then "-Contribution" else ""} \
      ~{if defined(target) then ("--target " +  '"' + target + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    region: ":1-1000 > STDOUT 2> STDERR"
    version: ": v1.0.0-rc0-349-g45c6-dirty"
    contact: ": zev.kronenberg [at] gmail.com"
    notes: ": If you find a bug, please open a report on github!"
    support: ": Please post questions to biostars.org"
    contribution: ":\\nZev Kronenberg (UW Genome Sciences)\\nMark Yandell   (UU Human genetics)\\nMike Shapiro   (UU Biology)\\nEJ Osborne     (UU Human genetics)\\nBrett Kennedy  (UU Human genetics)\\nDaniel Ence    (UU Human genetics)\\nErik Garrison  (Wellcome Trust Sanger Institute)\\nTravis Collier (UC Davis)\\n-     Your name goes here       -'"
    target: ""
  }
  output {
    File out_stdout = stdout()
  }
}