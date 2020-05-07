version 1.0

task MeltEHH {
  input {
    String regionRegion
    String yourYour
  }
  command <<<
    meltEHH \
      ~{if defined(regionRegion) then ("--region " +  '"' + regionRegion + '"') else ""} \
      ~{if defined(yourYour) then ("-     Your " +  '"' + yourYour + '"') else ""}
  >>>
}