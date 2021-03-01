version 1.0

task GmvalueSubcon {
  input {
    File? input_scaffold_fasta
    File? ref
    Int? min_id
    Int? min_cov
    Int? min_align
    Int? min_len
    String? prefix_name_output
    String? error_correct
    Int? nuc_len
    Int? min_gap
    Int? max_in_del
    Int? thread
    String? var_12
    String gm_value
    String usage
    String var_input
    String minimum
    Int number
    String var_18
    String alignment
    String an
    String contig
    String coverage
    String exact
    String gap
    String var_25
    String name
    String reference
    String scaffold
    String verdot
    String error_corrected
    String fast_a
    String identity
    String match
    String overlap
    String threads
    File var_file
    String in
    Int length
    String var_output
    String to
    String be
    String for
    String var_43
    String run
    String set
    String with
    String considered
    String scaffolds
    String specifying
    String the
    String maximum
    String nuc_mer
    String allowable
    String split
    String into
    Int size
    String of
    String sub_contigs
    String indels
  }
  command <<<
    gmvalue subcon \
      ~{gm_value} \
      ~{usage} \
      ~{var_input} \
      ~{minimum} \
      ~{number} \
      ~{var_18} \
      ~{alignment} \
      ~{an} \
      ~{contig} \
      ~{coverage} \
      ~{exact} \
      ~{gap} \
      ~{var_25} \
      ~{name} \
      ~{reference} \
      ~{scaffold} \
      ~{verdot} \
      ~{error_corrected} \
      ~{fast_a} \
      ~{identity} \
      ~{match} \
      ~{overlap} \
      ~{threads} \
      ~{var_file} \
      ~{in} \
      ~{length} \
      ~{var_output} \
      ~{to} \
      ~{be} \
      ~{for} \
      ~{var_43} \
      ~{run} \
      ~{set} \
      ~{with} \
      ~{considered} \
      ~{scaffolds} \
      ~{specifying} \
      ~{the} \
      ~{maximum} \
      ~{nuc_mer} \
      ~{allowable} \
      ~{split} \
      ~{into} \
      ~{size} \
      ~{of} \
      ~{sub_contigs} \
      ~{indels} \
      ~{if defined(input_scaffold_fasta) then ("--query " +  '"' + input_scaffold_fasta + '"') else ""} \
      ~{if defined(ref) then ("--ref " +  '"' + ref + '"') else ""} \
      ~{if defined(min_id) then ("--min_id " +  '"' + min_id + '"') else ""} \
      ~{if defined(min_cov) then ("--min_cov " +  '"' + min_cov + '"') else ""} \
      ~{if defined(min_align) then ("--min_align " +  '"' + min_align + '"') else ""} \
      ~{if defined(min_len) then ("--min_len " +  '"' + min_len + '"') else ""} \
      ~{if defined(prefix_name_output) then ("--prefix " +  '"' + prefix_name_output + '"') else ""} \
      ~{if defined(error_correct) then ("--error_correct " +  '"' + error_correct + '"') else ""} \
      ~{if defined(nuc_len) then ("--nuc_len " +  '"' + nuc_len + '"') else ""} \
      ~{if defined(min_gap) then ("--min_gap " +  '"' + min_gap + '"') else ""} \
      ~{if defined(max_in_del) then ("--max_indel " +  '"' + max_in_del + '"') else ""} \
      ~{if defined(thread) then ("--thread " +  '"' + thread + '"') else ""} \
      ~{if defined(var_12) then ("--help " +  '"' + var_12 + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    input_scaffold_fasta: "input scaffold fasta file (e.g., scaf1.fa)"
    ref: "input reference file (e.g., ref.fa)"
    min_id: "minimum alignment identity (%) [default: 97]"
    min_cov: "minimum coverage (%) of query (contig) aligned to a reference [default: 99]"
    min_align: "minimum alignment overlap length with the maximum allowable size of indels [default: 200]"
    min_len: "minimum contig length to be considered [default: 200]"
    prefix_name_output: "prefix name of output files"
    error_correct: "output an error-corrected contig set [default: false]"
    nuc_len: "minimum exact match length for specifying nucmer option -l [default: 30]"
    min_gap: "minimum gap size in query scaffolds to split into subcontigs [default: 1]"
    max_in_del: "maximum allowable size of indels in subcontigs (or distance between break points of a local misassembly) [default: 100]"
    thread: "number of threads to run [default: 1]"
    var_12: ""
    gm_value: ""
    usage: ""
    var_input: ""
    minimum: ""
    number: ""
    var_18: ""
    alignment: ""
    an: ""
    contig: ""
    coverage: ""
    exact: ""
    gap: ""
    var_25: ""
    name: ""
    reference: ""
    scaffold: ""
    verdot: ""
    error_corrected: ""
    fast_a: ""
    identity: ""
    match: ""
    overlap: ""
    threads: ""
    var_file: ""
    in: ""
    length: ""
    var_output: ""
    to: ""
    be: ""
    for: ""
    var_43: ""
    run: ""
    set: ""
    with: ""
    considered: ""
    scaffolds: ""
    specifying: ""
    the: ""
    maximum: ""
    nuc_mer: ""
    allowable: ""
    split: ""
    into: ""
    size: ""
    of: ""
    sub_contigs: ""
    indels: ""
  }
  output {
    File out_stdout = stdout()
  }
}