version 1.0

task VcfShuffleCols {
  input {
    File templateTemplate
  }
  command <<<
    vcf-shuffle-cols \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""}
  >>>
}