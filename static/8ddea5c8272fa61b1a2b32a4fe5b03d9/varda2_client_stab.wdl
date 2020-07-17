version 1.0

task Varda2ClientStab {
  input {
    String? start
    String? end
    String? reference
  }
  command <<<
    varda2-client stab \
      ~{if defined(start) then ("--start " +  '"' + start + '"') else ""} \
      ~{if defined(end) then ("--end " +  '"' + end + '"') else ""} \
      ~{if defined(reference) then ("--reference " +  '"' + reference + '"') else ""}
  >>>
  parameter_meta {
    start: "Start of region"
    end: "End of region"
    reference: "Chromosome to look at"
  }
}