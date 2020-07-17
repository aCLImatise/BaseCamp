version 1.0

task EukHighConfidenceFilter {
  input {
    String e_uk_quality_filter
  }
  command <<<
    EukHighConfidenceFilter \
      ~{e_uk_quality_filter}
  >>>
  parameter_meta {
    e_uk_quality_filter: ""
  }
}