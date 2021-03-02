version 1.0

task NucmerContigAlignpl {
  input {
    File? query
    File? ref
    Int? min_id
    Int? min_len
    Int? min_cov
    String? prefix_name_output
    String? error_correct
    Int? nuc_len
    Int? max_in_del
    Int? thread
    String? var_10
    String usage
    String var_input
    String maximum
    String minimum
    Int number
    String var_16
    String alignment
    String allowable
    String an
    String contig
    String coverage
    String exact
    String var_23
    String name
    String reference
    String error_corrected
    String fast_a
    String identity
    Int length
    String match
    String of
    Int size
    String threads
    File var_file
    String var_output
    String to
    String be
    String for
    String indels
    String run
    String set
    String considered
    String specifying
    String nuc_mer
  }
  command <<<
    Nucmer_contig_align_pl \
      ~{usage} \
      ~{var_input} \
      ~{maximum} \
      ~{minimum} \
      ~{number} \
      ~{var_16} \
      ~{alignment} \
      ~{allowable} \
      ~{an} \
      ~{contig} \
      ~{coverage} \
      ~{exact} \
      ~{var_23} \
      ~{name} \
      ~{reference} \
      ~{error_corrected} \
      ~{fast_a} \
      ~{identity} \
      ~{length} \
      ~{match} \
      ~{of} \
      ~{size} \
      ~{threads} \
      ~{var_file} \
      ~{var_output} \
      ~{to} \
      ~{be} \
      ~{for} \
      ~{indels} \
      ~{run} \
      ~{set} \
      ~{considered} \
      ~{specifying} \
      ~{nuc_mer} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(prefix_name_output) then ("--prefix " +  '"' + prefix_name_output + '"') else ""} \
      ~{if defined(error_correct) then ("--error_correct " +  '"' + error_correct + '"') else ""} \
      ~{if defined(nuc_len) then ("--nuc_len " +  '"' + nuc_len + '"') else ""} \
      ~{if defined(max_in_del) then ("--max_indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(var_10) then ("--help " +  '"' + var_10 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    query: "input contig fasta file (e.g., contig1.fa)"
    ref: "input reference file (e.g., ref.fa)"
    min_id: "minimum alignment identity (%) [default: 97]"
    min_len: "minimum contig length to be considered [default: 200]"
    min_cov: "minimum coverage (%) of query (contig) aligned to a reference [default: 99]"
    prefix_name_output: "prefix name of output files"
    error_correct: "output an error-corrected contig set [default: false]"
    nuc_len: "minimum exact match length for specifying nucmer option -l [default: 30]"
    max_in_del: "maximum allowable size of indels (or distance between break points of a local misassembly) [default: 100]"
    thread: "number of threads to run [default: 1]"
    var_10: ""
    usage: ""
    var_input: ""
    maximum: ""
    minimum: ""
    number: ""
    var_16: ""
    alignment: ""
    allowable: ""
    an: ""
    contig: ""
    coverage: ""
    exact: ""
    var_23: ""
    name: ""
    reference: ""
    error_corrected: ""
    fast_a: ""
    identity: ""
    length: ""
    match: ""
    of: ""
    size: ""
    threads: ""
    var_file: ""
    var_output: ""
    to: ""
    be: ""
    for: ""
    indels: ""
    run: ""
    set: ""
    considered: ""
    specifying: ""
    nuc_mer: ""
  }
  output {
    File out_stdout = stdout()
  }
}