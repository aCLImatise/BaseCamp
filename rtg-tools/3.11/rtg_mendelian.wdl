version 1.0

task RtgMendelian {
  input {
    File inputInput
    File outputOutput
    File outputOutputConsistent
    File outputOutputInconsistent
    String templateTemplate
    Boolean allAllRecords
    Boolean lenientLenient
    Float minMinConcordance
    File pedigreePedigree
    Boolean noNoGzip
  }
  command <<<
    rtg mendelian \
      ~{if defined(inputInput) then ("--input " +  '"' + inputInput + '"') else ""} \
      ~{if defined(outputOutput) then ("--output " +  '"' + outputOutput + '"') else ""} \
      ~{if defined(outputOutputConsistent) then ("--output-consistent " +  '"' + outputOutputConsistent + '"') else ""} \
      ~{if defined(outputOutputInconsistent) then ("--output-inconsistent " +  '"' + outputOutputInconsistent + '"') else ""} \
      ~{if defined(templateTemplate) then ("--template " +  '"' + templateTemplate + '"') else ""} \
      ~{true="--all-records" false="" allAllRecords} \
      ~{true="--lenient" false="" lenientLenient} \
      ~{if defined(minMinConcordance) then ("--min-concordance " +  '"' + minMinConcordance + '"') else ""} \
      ~{if defined(pedigreePedigree) then ("--pedigree " +  '"' + pedigreePedigree + '"') else ""} \
      ~{true="--no-gzip" false="" noNoGzip}
  >>>
}