version 1.0

task Hmmpgmd {
  input {
    Boolean? master
    String? worker
    Int? c_port
    Int? w_port
    Int? cc_ncts
    Int? wcnc_ts
    File? pid
    String? seq_db
    String? hmm_db
    Int? cpu
  }
  command <<<
    hmmpgmd \
      ~{if (master) then "--master" else ""} \
      ~{if defined(worker) then ("--worker " +  '"' + worker + '"') else ""} \
      ~{if defined(c_port) then ("--cport " +  '"' + c_port + '"') else ""} \
      ~{if defined(w_port) then ("--wport " +  '"' + w_port + '"') else ""} \
      ~{if defined(cc_ncts) then ("--ccncts " +  '"' + cc_ncts + '"') else ""} \
      ~{if defined(wcnc_ts) then ("--wcncts " +  '"' + wcnc_ts + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if defined(seq_db) then ("--seqdb " +  '"' + seq_db + '"') else ""} \
      ~{if defined(hmm_db) then ("--hmmdb " +  '"' + hmm_db + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    master: ": run program as the master server"
    worker: ": run program as a worker with server at <s>"
    c_port: ": port to use for client/server communication  [51371]"
    w_port: ": port to use for server/worker communication  [51372]"
    cc_ncts: ": maximum number of client side connections to accept  [16]"
    wcnc_ts: ": maximum number of worker side connections to accept  [32]"
    pid: ": file to write process id to"
    seq_db: ": protein database to cache for searches"
    hmm_db: ": hmm database to cache for searches"
    cpu: ": number of parallel CPU workers to use for multithreads  [2]"
  }
  output {
    File out_stdout = stdout()
  }
}