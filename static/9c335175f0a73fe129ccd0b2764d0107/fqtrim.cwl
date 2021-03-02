class: CommandLineTool
id: fqtrim.cwl
inputs:
- id: in_rename_reads_using
  doc: "rename the reads using the <prefix> followed by a read counter;\nif -C option\
    \ was also provided, the suffix \"_x<N>\" is appended\n(where <N> is the read\
    \ duplication count)"
  type: boolean?
  inputBinding:
    prefix: -n
- id: in_write_trimmedfiltered_reads
  doc: "write the trimmed/filtered reads to file(s) named <input>.<outsuffix>\nwhich\
    \ will be created in the current (working) directory (unless --outdir\nis used);\
    \ this suffix should include the file extension; if this extension\nis .gz, .gzip\
    \ or .bz2 then the output will be compressed accordingly.\nNOTE: if the input\
    \ file is '-' (stdin) then this is the full name of the\noutput file, not just\
    \ the suffix."
  type: boolean?
  inputBinding:
    prefix: -o
- id: in_outdir
  doc: ', write the output file(s) to <outdir> directory instead'
  type: File?
  inputBinding:
    prefix: --outdir
- id: in_file_trim_line
  doc: "file with adapter sequences to trim, each line having this format:\n[<5_adapter_sequence>][\
    \ <3_adapter_sequence>]"
  type: boolean?
  inputBinding:
    prefix: -f
- id: in_trim_given_adapter
  doc: "trim the given adapter or primer sequence at the 5' end of each read\n(e.g.\
    \ -5 CGACAGGTTCAGAGTTCTACAGTCCGACGATC)"
  type: boolean?
  inputBinding:
    prefix: '-5'
- id: in_trim_given_sequence
  doc: "trim the given adapter sequence at the 3' end of each read\n(e.g. -3 TCGTATGCCGTCTTCTGCTTG)"
  type: boolean?
  inputBinding:
    prefix: '-3'
- id: in_disable_polyat_trimming
  doc: disable polyA/T trimming (enabled by default)
  type: boolean?
  inputBinding:
    prefix: -A
- id: in_trim_polyat_ends
  doc: "trim polyA/T at both ends (default: only poly-A at 3' end, poly-T at 5')"
  type: boolean?
  inputBinding:
    prefix: -B
- id: in_output_only_reads
  doc: output only reads affected by trimming (discard clean reads!)
  type: boolean?
  inputBinding:
    prefix: -O
- id: in_minimum_length_polyat
  doc: minimum length of poly-A/T run to remove (6)
  type: boolean?
  inputBinding:
    prefix: -y
- id: in_trim_read_ends
  doc: trim read ends where the quality value drops below <minq>
  type: boolean?
  inputBinding:
    prefix: -q
- id: in_q_sliding_window
  doc: for -q, sliding window size for calculating avg. quality (default 6)
  type: boolean?
  inputBinding:
    prefix: -w
- id: in_q_limit_maximum
  doc: for -q, limit maximum trimming at either end to <trim_max_len>
  type: boolean?
  inputBinding:
    prefix: -t
- id: in_maximum_percentage_allowed
  doc: maximum percentage of Ns allowed in a read after trimming (default 5)
  type: boolean?
  inputBinding:
    prefix: -m
- id: in_minimum_read_length
  doc: "minimum read length after trimming (if the remaining sequence is shorter\n\
    than this, the read will be discarded (trashed)(default: 16)"
  type: boolean?
  inputBinding:
    prefix: -l
- id: in_write_file_listing
  doc: "write a \"trimming report\" file listing the affected reads with a list\n\
    of trimming operations"
  type: boolean?
  inputBinding:
    prefix: -r
- id: in_s_one
  doc: ":  for paired reads, one of the reads (1 or 2) is not being processed\n(no\
    \ attempt to trim it) but the pair is discarded if the other read is\ntrashed\
    \ by the trimming process"
  type: boolean?
  inputBinding:
    prefix: -s1
- id: in_aid_x
  doc: "can only be given with -r and -f options and it makes all the\nvector/adapter\
    \ trimming operations encoded as a,b,c,.. instead of V,\ncorresponding to the\
    \ order of adapter sequences in the -f file"
  type: File?
  inputBinding:
    prefix: --aidx
- id: in_write_number_ends
  doc: "write the number of bases trimmed at 5' and 3' ends after the read names\n\
    in the FASTA/FASTQ output file(s)"
  type: boolean?
  inputBinding:
    prefix: -T
- id: in_pass_reads_discard
  doc: "pass reads through a low-complexity (dust) filter and discard any read\nthat\
    \ has over 50% of its length masked as low complexity"
  type: boolean?
  inputBinding:
    prefix: -D
- id: in_d_mask
  doc: "is the same with -D but fqtrim will actually mask the low\ncomplexity regions\
    \ with Ns in the output sequence"
  type: string?
  inputBinding:
    prefix: --dmask
- id: in_collapse_duplicate_reads
  doc: "collapse duplicate reads and append a _x<N>count suffix to the read\nname\
    \ (where <N> is the duplication count)"
  type: boolean?
  inputBinding:
    prefix: -C
- id: in_use_numcpus_threads
  doc: use <numcpus> CPUs (threads) on the local machine
  type: boolean?
  inputBinding:
    prefix: -p
- id: in_input_phredphred_use
  doc: input is phred64/phred33 (use -P64 or -P33)
  type: boolean?
  inputBinding:
    prefix: -P
- id: in_convert_quality_values
  doc: convert quality values to the other Phred qv type
  type: boolean?
  inputBinding:
    prefix: -Q
- id: in_disable_read_name
  doc: disable read name consistency check for paired reads
  type: boolean?
  inputBinding:
    prefix: -M
- id: in_show_verbose_summary
  doc: show verbose trimming summary
  type: boolean?
  inputBinding:
    prefix: -V
- id: in_minimum_length_exact
  doc: "minimum length of exact suffix-prefix match with adapter sequence that\ncan\
    \ be trimmed at either end of the read (default: 6)"
  type: boolean?
  inputBinding:
    prefix: -a
- id: in_pid_five
  doc: minimum percent identity for adapter match at 5' end (default 96.0)
  type: boolean?
  inputBinding:
    prefix: --pid5
- id: in_pid_three
  doc: minimum percent identity for adapter match at 3' end (default 94.0)
  type: boolean?
  inputBinding:
    prefix: --pid3
- id: in_mism
  doc: mismatch penalty for scoring the adapter alignment (default 3)
  type: boolean?
  inputBinding:
    prefix: --mism
- id: in_match
  doc: reward for scoring the adapter alignment (default 1)
  type: long?
  inputBinding:
    prefix: --match
- id: in_also_look_complementof
  doc: "also look for terminal alignments with the reverse complement\nof the adapter\
    \ sequence(s)"
  type: boolean?
  inputBinding:
    prefix: -R
outputs:
- id: out_stdout
  doc: Standard output stream
  type: stdout
- id: out_outdir
  doc: ', write the output file(s) to <outdir> directory instead'
  type: File?
  outputBinding:
    glob: $(inputs.in_outdir)
hints: []
cwlVersion: v1.1
baseCommand:
- fqtrim
