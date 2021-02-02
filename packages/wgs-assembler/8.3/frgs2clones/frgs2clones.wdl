version 1.0

task Frgs2clones {
  input {
    String? read_fragments_gatekeeper
    Boolean? build_alignment_overlapping
    Boolean? build_scaffold_mated
    Boolean? use_real_uids
    String? opts
  }
  command <<<
    frgs2clones \
      ~{opts} \
      ~{if defined(read_fragments_gatekeeper) then ("-g " +  '"' + read_fragments_gatekeeper + '"') else ""} \
      ~{if (build_alignment_overlapping) then "-C" else ""} \
      ~{if (build_scaffold_mated) then "-N" else ""} \
      ~{if (use_real_uids) then "-U" else ""}
  >>>
  parameter_meta {
    read_fragments_gatekeeper: "read fragments from this gatekeeper store"
    build_alignment_overlapping: "build an alignment for overlapping fragments"
    build_scaffold_mated: "build a scaffold for non-overlapping mated fragments"
    use_real_uids: "use real UIDs from the UID server"
    opts: ""
  }
  output {
    File out_stdout = stdout()
  }
}