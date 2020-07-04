version 1.0

task MulledSearch {
  input {
    String? organization
    Boolean? non_strict
    String? search
  }
  command <<<
    mulled-search \
      ~{if defined(organization) then ("--organization " +  '"' + organization + '"') else ""} \
      ~{true="--non-strict" false="" non_strict} \
      ~{if defined(search) then ("--search " +  '"' + search + '"') else ""}
  >>>
  parameter_meta {
    organization: "Change organization. Default is biocontainers."
    non_strict: "Autocorrection of typos activated. Lists more results but can be confusing. For too many queries quay.io blocks the request and the results can be incomplete."
    search: "The name of the tool you want to search for."
  }
}