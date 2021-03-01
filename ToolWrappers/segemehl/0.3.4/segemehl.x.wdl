version 1.0

task Segemehlx {
  input {
    File? database
    File? query
    File? mate
    File? index
    File? index_two
    File? generate
    File? generate_two
    File? read_group_file
    String? read_groupid
    Int? threads
    String? outfile
    File? bam_aba_fix_oid_a
    File? no_match_filename
    Boolean? brief_cigar
    Boolean? progress_bar
    File? file_bins
    Boolean? me_op
    Int? bisulfite
    Boolean? splits
    Int? accuracy
    Int? differences
    Int? evalue
    Boolean? hit_strategy
    Int? minsize
    Int? m_infra_glen
    Int? min_splice_cover
    Int? min_frag_score
    Float? splice_score_scale
    Int? max_split_evalue
    Int? drop_off
    Int? jump
    Boolean? order
    Int? max_pair_insert_size
    Int? max_interval
    Boolean? check_idx
    Int? extension_penalty
    Int? max_out
    Boolean? skip_id_check
    Boolean? show_align
    Boolean? no_head
    Boolean? full_name
    Boolean? be_svoc_f
    File? var_file
    String? basename
  }
  command <<<
    segemehl_x \
      ~{var_file} \
      ~{basename} \
      ~{if defined(database) then ("--database " +  '"' + database + '"') else ""} \
      ~{if defined(query) then ("--query " +  '"' + query + '"') else ""} \
      ~{if defined(mate) then ("--mate " +  '"' + mate + '"') else ""} \
      ~{if defined(index) then ("--index " +  '"' + index + '"') else ""} \
      ~{if defined(index_two) then ("--index2 " +  '"' + index_two + '"') else ""} \
      ~{if defined(generate) then ("--generate " +  '"' + generate + '"') else ""} \
      ~{if defined(generate_two) then ("--generate2 " +  '"' + generate_two + '"') else ""} \
      ~{if defined(read_group_file) then ("--readgroupfile " +  '"' + read_group_file + '"') else ""} \
      ~{if defined(read_groupid) then ("--readgroupid " +  '"' + read_groupid + '"') else ""} \
      ~{if defined(threads) then ("--threads " +  '"' + threads + '"') else ""} \
      ~{if defined(outfile) then ("--outfile " +  '"' + outfile + '"') else ""} \
      ~{if (bam_aba_fix_oid_a) then "--bamabafixoida" else ""} \
      ~{if defined(no_match_filename) then ("--nomatchfilename " +  '"' + no_match_filename + '"') else ""} \
      ~{if (brief_cigar) then "--briefcigar" else ""} \
      ~{if (progress_bar) then "--progressbar" else ""} \
      ~{if defined(file_bins) then ("--filebins " +  '"' + file_bins + '"') else ""} \
      ~{if (me_op) then "--MEOP" else ""} \
      ~{if defined(bisulfite) then ("--bisulfite " +  '"' + bisulfite + '"') else ""} \
      ~{if (splits) then "--splits" else ""} \
      ~{if defined(accuracy) then ("--accuracy " +  '"' + accuracy + '"') else ""} \
      ~{if defined(differences) then ("--differences " +  '"' + differences + '"') else ""} \
      ~{if defined(evalue) then ("--evalue " +  '"' + evalue + '"') else ""} \
      ~{if (hit_strategy) then "--hitstrategy" else ""} \
      ~{if defined(minsize) then ("--minsize " +  '"' + minsize + '"') else ""} \
      ~{if defined(m_infra_glen) then ("--minfraglen " +  '"' + m_infra_glen + '"') else ""} \
      ~{if defined(min_splice_cover) then ("--minsplicecover " +  '"' + min_splice_cover + '"') else ""} \
      ~{if defined(min_frag_score) then ("--minfragscore " +  '"' + min_frag_score + '"') else ""} \
      ~{if defined(splice_score_scale) then ("--splicescorescale " +  '"' + splice_score_scale + '"') else ""} \
      ~{if defined(max_split_evalue) then ("--maxsplitevalue " +  '"' + max_split_evalue + '"') else ""} \
      ~{if defined(drop_off) then ("--dropoff " +  '"' + drop_off + '"') else ""} \
      ~{if defined(jump) then ("--jump " +  '"' + jump + '"') else ""} \
      ~{if (order) then "--order" else ""} \
      ~{if defined(max_pair_insert_size) then ("--maxpairinsertsize " +  '"' + max_pair_insert_size + '"') else ""} \
      ~{if defined(max_interval) then ("--maxinterval " +  '"' + max_interval + '"') else ""} \
      ~{if (check_idx) then "--checkidx" else ""} \
      ~{if defined(extension_penalty) then ("--extensionpenalty " +  '"' + extension_penalty + '"') else ""} \
      ~{if defined(max_out) then ("--maxout " +  '"' + max_out + '"') else ""} \
      ~{if (skip_id_check) then "--skipidcheck" else ""} \
      ~{if (show_align) then "--showalign" else ""} \
      ~{if (no_head) then "--nohead" else ""} \
      ~{if (full_name) then "--fullname" else ""} \
      ~{if (be_svoc_f) then "-besVOcf" else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    database: "[<file>]  list of path/filename(s) of fasta database sequence(s)"
    query: "path/filename of query sequences (default:none)"
    mate: "path/filename of mate pair sequences (default:none)"
    index: "path/filename of db index (default:none)"
    index_two: "path/filename of second db index (default:none)"
    generate: "generate db index and store to disk (default:none)"
    generate_two: "generate second db index and store to disk (default:none)"
    read_group_file: "filename to read @RG header (default:none)"
    read_groupid: "read group id (default:none)"
    threads: "start <n> threads (default:1)"
    outfile: "outputfile (default:none)"
    bam_aba_fix_oid_a: "generate a bam output (-o <filename> required)"
    no_match_filename: "filename for unmatched reads (default:none)"
    brief_cigar: "brief cigar string (M vs X and =)"
    progress_bar: "show a progress bar"
    file_bins: "file bins with basename <string> for easier data handling (default:none)"
    me_op: "output MEOP field for easier variance calling in SAM (XE:Z:)"
    bisulfite: "bisulfite aln with methylC-seq/Lister et al. (=1) or bs-seq/Cokus et al. protocol (=2) (default:0)"
    splits: "[<basename>]       detect split/spliced reads. (default:none)"
    accuracy: "min percentage of matches per read in semi-global alignment (default:90)"
    differences: "search seeds initially with <n> differences (default:1)"
    evalue: "max evalue (default:5.000000)"
    hit_strategy: "report only best scoring hits (=1) or all (=0) (default:1)"
    minsize: "minimum length of queries (default:12)"
    m_infra_glen: "min length of a spliced fragment (default:20)"
    min_splice_cover: "min coverage for spliced transcripts (default:80)"
    min_frag_score: "min score of a spliced fragment (default:18)"
    splice_score_scale: "report spliced alignment with score s only if <f>*s is larger than next best spliced alignment (default:0.900000)"
    max_split_evalue: "max evalue for splits (default:50.000000)"
    drop_off: "dropoff parameter for extension (default:8)"
    jump: "search seeds with jump size <n> (0=automatic) (default:0)"
    order: "sorts the output by chromsome and position (might take a while!)"
    max_pair_insert_size: "maximum size of the inserts (paired end) in case of multiple hits (default:200000)"
    max_interval: "maximum width of a suffix array interval, i.e. a query seed will be omitted if it matches more than <n> times (default:100)"
    check_idx: "check index"
    extension_penalty: "penalty for a mismatch during extension (default:4)"
    max_out: "maximum number of alignments that will be reported. If set to zero, all alignments will be reported (default:0)"
    skip_id_check: "do not check whether the fastq ids of mates / paired ends match. Instead, the first mate (-q) will be used for output only."
    show_align: "show alignments"
    no_head: "do not output header"
    full_name: "write full query name (no trunctation at whitespace)"
    be_svoc_f: ""
    var_file: ""
    basename: ""
  }
  output {
    File out_stdout = stdout()
    File out_bam_aba_fix_oid_a = "${in_bam_aba_fix_oid_a}"
  }
}