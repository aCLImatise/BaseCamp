version 1.0

task Harvesttools {
  input {
    Int? b_bed_filter
  }
  command <<<
    harvesttools \
      ~{if defined(b_bed_filter) then ("-i " +  '"' + b_bed_filter + '"') else ""}
  >>>
  parameter_meta {
    b_bed_filter: "-b <bed filter intervals>,<filter name>,\\\"<description>\\\"\\n-B <output backbone intervals>\\n-f <reference fasta>\\n-F <reference fasta out>\\n-g <reference genbank>\\n-a <MAF alignment input>\\n-m <multi-fasta alignment input>\\n-M <multi-fasta alignment output (concatenated LCBs)>\\n-n <Newick tree input>\\n-N <Newick tree output>\\n--midpoint-reroot (reroot the tree at its midpoint after loading)\\n-o <Gingr output>\\n-S <output for multi-fasta SNPs>\\n-u 0/1 (update the branch values to reflect genome length)\\n-v <VCF input>\\n-V <VCF output>\\n-x <xmfa alignment file>\\n-X <output xmfa alignment file>\\n-h (show this help)\\n-q (quiet mode)\\n"
  }
  output {
    File out_stdout = stdout()
  }
}