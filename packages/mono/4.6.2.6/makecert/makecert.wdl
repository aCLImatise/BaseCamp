version 1.0

task Makecert {
  input {
    String? subject_distinguished_name
    String? in
    Boolean? create_selfsigned_certificate
    File? sv
    File? iv
    File? ic
    String certificate
  }
  command <<<
    makecert \
      ~{certificate} \
      ~{if defined(subject_distinguished_name) then ("-n " +  '"' + subject_distinguished_name + '"') else ""} \
      ~{if defined(in) then ("-in " +  '"' + in + '"') else ""} \
      ~{if (create_selfsigned_certificate) then "-r" else ""} \
      ~{if defined(sv) then ("-sv " +  '"' + sv + '"') else ""} \
      ~{if defined(iv) then ("-iv " +  '"' + iv + '"') else ""} \
      ~{if defined(ic) then ("-ic " +  '"' + ic + '"') else ""}
  >>>
  parameter_meta {
    subject_distinguished_name: "Subject Distinguished Name"
    in: "Issuer Distinguished Name"
    create_selfsigned_certificate: "Create a self-signed (root) certificate"
    sv: "Private key file (.PVK) for the subject (created if missing)"
    iv: "Private key file (.PVK) for the issuer"
    ic: "Extract the issuer's name from the specified certificate"
    certificate: ""
  }
  output {
    File out_stdout = stdout()
  }
}