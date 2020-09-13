version 1.0

task Uidclient {
  input {
    String? print_n_uids
    String? use_namespace_ns
    String? contact_euid_server
    Boolean? thrash
  }
  command <<<
    uidclient \
      ~{if defined(print_n_uids) then ("-p " +  '"' + print_n_uids + '"') else ""} \
      ~{if defined(use_namespace_ns) then ("-n " +  '"' + use_namespace_ns + '"') else ""} \
      ~{if defined(contact_euid_server) then ("-E " +  '"' + contact_euid_server + '"') else ""} \
      ~{if (thrash) then "-thrash" else ""}
  >>>
  parameter_meta {
    print_n_uids: "print n UIDs and exit."
    use_namespace_ns: "use namespace ns."
    contact_euid_server: "contact EUID server 'server'."
    thrash: "debug; get UIDs as fast as possible using blocksize 1.\\nThis is not what you want.  Don't use it.\\n"
  }
  output {
    File out_stdout = stdout()
  }
}