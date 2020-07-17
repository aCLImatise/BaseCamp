version 1.0

task FalconcIpaPolishSplit {
  input {
    Boolean? help_syntax
    Boolean? _maxnshards_int
    Boolean? _shardprefix_string
    Boolean? _blockprefix_string
    Boolean? _inreadtocontigfn_string
    Boolean? _outidsfn_string
    Boolean? mb_per_block
    Boolean? blacklist_fn
  }
  command <<<
    falconc ipa-polish-split \
      ~{true="--help-syntax" false="" help_syntax} \
      ~{true="-m" false="" _maxnshards_int} \
      ~{true="-s" false="" _shardprefix_string} \
      ~{true="-b" false="" _blockprefix_string} \
      ~{true="-i" false="" _inreadtocontigfn_string} \
      ~{true="-o" false="" _outidsfn_string} \
      ~{true="--mb-per-block" false="" mb_per_block} \
      ~{true="--blacklist-fn" false="" blacklist_fn}
  >>>
  parameter_meta {
    help_syntax: "advanced: prepend,plurals,.."
    _maxnshards_int: "=, --max-nshards=           int     REQUIRED                     Maximum number of distributed jobs"
    _shardprefix_string: "=, --shard-prefix=          string  \"shard\"                      The output. Shard files are (prefix).(shard_id).block_ids"
    _blockprefix_string: "=, --block-prefix=          string  \"block\"                      Block files are (prefix).(block_id).reads (prepared previously)"
    _inreadtocontigfn_string: "=, --in-read-to-contig-fn=  string  \"sorted.read_to_contig.csv\"  2-columns: read# ctg-name"
    _outidsfn_string: "=, --out-ids-fn=            string  \"all_shard_ids\"              If given, this lists the shard_ids, 0 thru N-1, corresponding to the shard-prefix.block_id files."
    mb_per_block: "=               int     REQUIRED                     Try to target megabases total in all contigs in any block"
    blacklist_fn: "=               string  \"\"                           Specifies a file with a list of contigs to skip for polishing."
  }
}