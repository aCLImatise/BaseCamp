version 1.0

task BsSeeker2Align.py {
  input {
    String? input_read_readfa
    File? input_one
    File? input_two
    Int? mini_ns
    Int? max_ins
    Boolean? rrbs
    String? cut_site
    String? low
    String? up
    String? tag
    String? start_base
    String? end_base
    File? adapter
    String? am
    String? genome
    String? mismatches
    String? aligner
    File? path
    String? db
    Int? split_line
    String? name_output_file
    String? output_format
    Boolean? no_header
    File? temp_dir
    String? xs
    Boolean? x_steve
    File? multiple_hit
    File? unmapped
  }
  command <<<
    bs_seeker2-align.py \
      ~{if defined(input_read_readfa) then ("--input " +  '"' + input_read_readfa + '"') else ""} \
      ~{if defined(input_one) then ("--input_1 " +  '"' + input_one + '"') else ""} \
      ~{if defined(input_two) then ("--input_2 " +  '"' + input_two + '"') else ""} \
      ~{if defined(mini_ns) then ("--minins " +  '"' + mini_ns + '"') else ""} \
      ~{if defined(max_ins) then ("--maxins " +  '"' + max_ins + '"') else ""} \
      ~{true="--rrbs" false="" rrbs} \
      ~{if defined(cut_site) then ("--cut-site " +  '"' + cut_site + '"') else ""} \
      ~{if defined(low) then ("--low " +  '"' + low + '"') else ""} \
      ~{if defined(up) then ("--up " +  '"' + up + '"') else ""} \
      ~{if defined(tag) then ("--tag " +  '"' + tag + '"') else ""} \
      ~{if defined(start_base) then ("--start_base " +  '"' + start_base + '"') else ""} \
      ~{if defined(end_base) then ("--end_base " +  '"' + end_base + '"') else ""} \
      ~{if defined(adapter) then ("--adapter " +  '"' + adapter + '"') else ""} \
      ~{if defined(am) then ("--am " +  '"' + am + '"') else ""} \
      ~{if defined(genome) then ("--genome " +  '"' + genome + '"') else ""} \
      ~{if defined(mismatches) then ("--mismatches " +  '"' + mismatches + '"') else ""} \
      ~{if defined(aligner) then ("--aligner " +  '"' + aligner + '"') else ""} \
      ~{if defined(path) then ("--path " +  '"' + path + '"') else ""} \
      ~{if defined(db) then ("--db " +  '"' + db + '"') else ""} \
      ~{if defined(split_line) then ("--split_line " +  '"' + split_line + '"') else ""} \
      ~{if defined(name_output_file) then ("--output " +  '"' + name_output_file + '"') else ""} \
      ~{if defined(output_format) then ("--output-format " +  '"' + output_format + '"') else ""} \
      ~{true="--no-header" false="" no_header} \
      ~{if defined(temp_dir) then ("--temp_dir " +  '"' + temp_dir + '"') else ""} \
      ~{if defined(xs) then ("--XS " +  '"' + xs + '"') else ""} \
      ~{true="--XSteve" false="" x_steve} \
      ~{if defined(multiple_hit) then ("--multiple-hit " +  '"' + multiple_hit + '"') else ""} \
      ~{if defined(unmapped) then ("--unmapped " +  '"' + unmapped + '"') else ""}
  >>>
  parameter_meta {
    input_read_readfa: "Input read file (FORMAT: sequences, qseq, fasta, fastq). Ex: read.fa or read.fa.gz"
    input_one: "Input read file, mate 1 (FORMAT: sequences, qseq, fasta, fastq)"
    input_two: "Input read file, mate 2 (FORMAT: sequences, qseq, fasta, fastq)"
    mini_ns: "The minimum insert size for valid paired-end alignments [Default: 0]"
    max_ins: "The maximum insert size for valid paired-end alignments [Default: 500]"
    rrbs: "Map reads to the Reduced Representation genome"
    cut_site: "Cutting sites of restriction enzyme. Ex: MspI(C-CGG), Mael:(C-TAG), double-enzyme MspI&Mael:(C-CGG,C-TAG). [Default: C-CGG]"
    low: "Lower bound of fragment length (excluding C-CGG ends) [Default: 20]"
    up: "Upper bound of fragment length (excluding C-CGG ends) [Default: 500]"
    tag: "[Y]es for undirectional lib, [N]o for directional [Default: N]"
    start_base: "The first cycle of the read to be mapped [Default: 1]"
    end_base: "The last cycle of the read to be mapped [Default: 200]"
    adapter: "Input text file of your adaptor sequences (to be trimmed from the 3'end of the reads, ). Input one seq for dir. lib., twon seqs for undir. lib. One line per sequence. Only the first 10bp will be used"
    am: "Number of mismatches allowed in adapter [Default: 0]"
    genome: "Name of the reference genome (should be the same as \"-f\" in bs_seeker2-build.py ) [ex. chr21_hg18.fa]"
    mismatches: "Number(>=1)/Percentage([0, 1)) of mismatches in one read. Ex: 4 (allow 4 mismatches) or 0.04 (allow 4% mismatches) [Default: 4]"
    aligner: "Aligner program for short reads mapping: bowtie, bowtie2, soap, rmap [Default: bowtie]"
    path: "Path to the aligner program. Detected: bowtie: None bowtie2: /tmp/tmp5qr94fea/bin rmap: None soap: None"
    db: "Path to the reference genome library (generated in preprocessing genome) [Default: /tmp/tmp5qr94fea/bin/bs_utils/reference_genomes]"
    split_line: "Number of lines per split (the read file will be split into small files for mapping. The result will be merged. [Default: 4000000]"
    name_output_file: "The name of output file [INFILE.bs(se|pe|rrbs)]"
    output_format: "Output format: bam, sam, bs_seeker1 [Default: bam]"
    no_header: "Suppress SAM header lines [Default: False]"
    temp_dir: "The path to your temporary directory [Detected: /tmp]"
    xs: "Filter definition for tag XS, format X,Y. X=0.8 and y=5 indicate that for one read, if #(mCH sites)/#(all CH sites)>0.8 and #(mCH sites)>5, then tag XS:i:1; or else tag XS:i:0. [Default: 0.5,5]"
    x_steve: "Filter definition for tag XS, proposed by Prof. Steve Jacobsen, reads with at least 3 successive mCHH will be labeled as XS:i:1,useful for plant genome, which have high mCHG level. Will override --XS option."
    multiple_hit: "File to store reads with multiple-hits"
    unmapped: "File to store unmapped reads"
  }
}