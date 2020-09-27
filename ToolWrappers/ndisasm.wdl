version 1.0

task Ndisasm {
  input {
    String? auto_intelligent_sync
    Int? as_b
    Int? b_sets_mode
    String? this_text
    Int? the_version_number
    String? bytes_bytes_header
    String? disassembling_bytes_bytes
    String? preferred_vendor_instruction
    String? s
    String? o
  }
  command <<<
    ndisasm \
      ~{if defined(auto_intelligent_sync) then ("-a " +  '"' + auto_intelligent_sync + '"') else ""} \
      ~{if defined(as_b) then ("-u " +  '"' + as_b + '"') else ""} \
      ~{if defined(b_sets_mode) then ("-b " +  '"' + b_sets_mode + '"') else ""} \
      ~{if defined(this_text) then ("-h " +  '"' + this_text + '"') else ""} \
      ~{if defined(the_version_number) then ("-r " +  '"' + the_version_number + '"') else ""} \
      ~{if defined(bytes_bytes_header) then ("-e " +  '"' + bytes_bytes_header + '"') else ""} \
      ~{if defined(disassembling_bytes_bytes) then ("-k " +  '"' + disassembling_bytes_bytes + '"') else ""} \
      ~{if defined(preferred_vendor_instruction) then ("-p " +  '"' + preferred_vendor_instruction + '"') else ""} \
      ~{if defined(s) then ("-s " +  '"' + s + '"') else ""} \
      ~{if defined(o) then ("-o " +  '"' + o + '"') else ""}
  >>>
  parameter_meta {
    auto_intelligent_sync: "auto (intelligent) sync"
    as_b: "as -b 32"
    b_sets_mode: "or -b 64 sets the processor mode"
    this_text: "this text"
    the_version_number: "the version number"
    bytes_bytes_header: "<bytes> bytes of header"
    disassembling_bytes_bytes: "disassembling <bytes> bytes from position <start>"
    preferred_vendor_instruction: "the preferred vendor instruction set (intel, amd, cyrix, idt)"
    s: ""
    o: ""
  }
  output {
    File out_stdout = stdout()
  }
}