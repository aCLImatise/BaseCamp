version 1.0

task FastqToCA {
  input {
    Int? insert_size
    String? library_name
    Int? technology
    File? type
    Boolean? in_nie
    Boolean? out_tie
    String? reads
    Boolean? nonrandom
    String? feature
    String? stddev
  }
  command <<<
    fastqToCA \
      ~{stddev} \
      ~{if defined(insert_size) then ("-insertsize " +  '"' + insert_size + '"') else ""} \
      ~{if defined(library_name) then ("-libraryname " +  '"' + library_name + '"') else ""} \
      ~{if defined(technology) then ("-technology " +  '"' + technology + '"') else ""} \
      ~{if defined(type) then ("-type " +  '"' + type + '"') else ""} \
      ~{if (in_nie) then "-innie" else ""} \
      ~{if (out_tie) then "-outtie" else ""} \
      ~{if defined(reads) then ("-reads " +  '"' + reads + '"') else ""} \
      ~{if (nonrandom) then "-nonrandom" else ""} \
      ~{if defined(feature) then ("-feature " +  '"' + feature + '"') else ""}
  >>>
  runtime {
    docker: "None"
  }
  parameter_meta {
    insert_size: "d    Mates are on average i +- d bp apart.\\nIf the word 'constant' follows the insert size, no changes will be\\nmade to the insert size."
    library_name: "The UID of the library these reads are added to."
    technology: "What instrument were these reads generated on ('illumina' is the default):\\n'none'               -- don't set any features; use -feature to set them manually\\n'sanger'             -- reads from dideoxy sequencers\\n'454'                -- reads from 454 Life Sciences; FLX, Titanium, FLX+\\n'illumina'           -- reads from Illumina; GAIIx, MiSeq, HiSeq; shorter than 160bp\\n'illumina-long'      -- reads from Illumina; GAIIx, MiSeq, HiSeq; any length\\n'moleculo'           -- reads from Illumina; Moleculo\\n'pacbio-ccs'         -- reads from PacBio; Circular Consensus Sequence (CSS)\\n'pacbio-corrected'   -- reads from PacBio; corrected reads from pacBioToCA\\n'pacbio-raw'         -- reads from PacBio; uncorrected reads"
    type: "What type of fastq ('sanger' is the default):\\n'sanger'   -- QV's are PHRED, offset=33 '!', NCBI SRA data.\\n'solexa'   -- QV's are Solexa, early Solexa data.\\n'illumina' -- QV's are PHRED, offset=64 '@', Illumina reads from version 1.3 on.\\nSee Cock, et al., 'The Sanger FASTQ file format for sequences with quality scores, and\\nthe Solexa/Illumina FASTQ variants', doi:10.1093/nar/gkp1137"
    in_nie: "The paired end reads are 5'-3' <-> 3'-5' (the usual case) (default)"
    out_tie: "The paired end reads are 3'-5' <-> 5'-3' (for Illumina Mate Pair reads)\\nThis switch will reverse-complement every read, transforming outtie-oriented\\nmates into innie-oriented mates.  This trick only works if all reads are the\\nsame length."
    reads: "Single ended reads, in fastq format."
    nonrandom: "Mark the library as containing non-random reads."
    feature: "V       Set feature F to value V."
    stddev: ""
  }
  output {
    File out_stdout = stdout()
  }
}