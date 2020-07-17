version 1.0

task Gdaladdo {
  input {
    String? r
  }
  command <<<
    gdaladdo \
      ~{if defined(r) then ("-r " +  '"' + r + '"') else ""}
  >>>
  parameter_meta {
    r: ""
  }
}