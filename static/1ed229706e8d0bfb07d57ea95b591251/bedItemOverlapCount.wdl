version 1.0

task BedItemOverlapCount {
  input {
    String? host
    String? user
    String? password
    String sort
    String bed_file_dot_bed
  }
  command <<<
    bedItemOverlapCount \
      ~{sort} \
      ~{bed_file_dot_bed} \
      ~{if defined(host) then ("-host " +  '"' + host + '"') else ""} \
      ~{if defined(user) then ("-user " +  '"' + user + '"') else ""} \
      ~{if defined(password) then ("-password " +  '"' + password + '"') else ""}
  >>>
  parameter_meta {
    host: "mysql host used to get chrom sizes"
    user: "mysql user"
    password: "mysql password"
    sort: ""
    bed_file_dot_bed: ""
  }
}