version 1.0

task EukHighConfidenceFilter {
  input {
    String? eEUkQualityFilter
  }
  command <<<
    EukHighConfidenceFilter \
      ~{eEUkQualityFilter}
  >>>
}