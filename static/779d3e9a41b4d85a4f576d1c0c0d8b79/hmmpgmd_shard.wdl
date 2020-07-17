version 1.0

task HmmpgmdShard {
  input {
    Boolean? master
    String? worker
    String? c_port
    String? w_port
    String? cc_ncts
    String? wcnc_ts
    String? pid
    String? seq_db
    String? hmm_db
    String? cpu
    String? num_shards
  }
  command <<<
    hmmpgmd_shard \
      ~{true="--master" false="" master} \
      ~{if defined(worker) then ("--worker " +  '"' + worker + '"') else ""} \
      ~{if defined(c_port) then ("--cport " +  '"' + c_port + '"') else ""} \
      ~{if defined(w_port) then ("--wport " +  '"' + w_port + '"') else ""} \
      ~{if defined(cc_ncts) then ("--ccncts " +  '"' + cc_ncts + '"') else ""} \
      ~{if defined(wcnc_ts) then ("--wcncts " +  '"' + wcnc_ts + '"') else ""} \
      ~{if defined(pid) then ("--pid " +  '"' + pid + '"') else ""} \
      ~{if defined(seq_db) then ("--seqdb " +  '"' + seq_db + '"') else ""} \
      ~{if defined(hmm_db) then ("--hmmdb " +  '"' + hmm_db + '"') else ""} \
      ~{if defined(cpu) then ("--cpu " +  '"' + cpu + '"') else ""} \
      ~{if defined(num_shards) then ("--num_shards " +  '"' + num_shards + '"') else ""}
  >>>
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
    num_shards: ": number of worker nodes that will connect to the master  [1]"
  }
}