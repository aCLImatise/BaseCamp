version 1.0

task CorrectSubcontigsCoords.pl {
  input {
    String? query
    String? ref
    String? align
    String? min_id
    String? min_cov
    String? min_align
    String? min_len
    String? prefix
    String? max_in_del
    String? thread
    String gm_value
    String verdot
    String one_dot_three
  }
  command <<<
    correct_subcontigs_coords.pl \
      ~{gm_value} \
      ~{verdot} \
      ~{one_dot_three} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(align) then ("--align " +  '"' + align + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(prefix) then ("--prefix " +  '"' + prefix + '"') else ""} \
      ~{if defined(max_in_del) then ("--max_indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""}
  >>>
  parameter_meta {
    query: "input contig fasta file (e.g., contig1.fa)"
    ref: "input reference file (e.g., ref.fa)"
    align: "input coords file from Nucmer outputs (e.g., align.coords)"
    min_id: "minimum alignment identity (%) [default: 97]"
    min_cov: "minimum coverage (%) of query (contig) aligned to a reference [default: 99]"
    min_align: "minimum alignment overlap length with the maximum allowable size of indels [default: 200]"
    min_len: "minimum contig length to be considered [default: 200]"
    prefix: "prefix name of outputs"
    max_in_del: "maximum allowable size of indels (or distance between break points) [default: 100]"
    thread: "number of threads to run [default: 1]"
    gm_value: ""
    verdot: ""
    one_dot_three: ""
  }
}