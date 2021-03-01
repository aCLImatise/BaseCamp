from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Ipa_Polish_Split_V0_1_0 = CommandToolBuilder(tool="falconc_ipa_polish_split", base_command=["falconc", "ipa-polish-split"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced:\nprepend,plurals,..")), ToolInput(tag="in__maxnshards_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-nshards=           int     REQUIRED                     Maximum number\nof distributed\njobs")), ToolInput(tag="in__shardprefix_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --shard-prefix=          string  'shard'                      The output.\nShard files are\n(prefix).(shard_id).block_ids")), ToolInput(tag="in__blockprefix_string", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --block-prefix=          string  'block'                      Block files are\n(prefix).(block_id).reads\n(prepared\npreviously)")), ToolInput(tag="in__string_columns", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="=, --in-read-to-contig-fn=  string  'sorted.read_to_contig.csv'  2-columns: read#")), ToolInput(tag="in_mb_per_block", input_type=Boolean(optional=True), prefix="--mb-per-block", doc=InputDocumentation(doc="=               int     REQUIRED                     Try to target\nmegabases total\nin all contigs\nin any block")), ToolInput(tag="in_blacklist_fn", input_type=Boolean(optional=True), prefix="--blacklist-fn", doc=InputDocumentation(doc="=               string  ''                           Specifies a file\nwith a list of\ncontigs to skip\nfor polishing.\n")), ToolInput(tag="in_cli_gen_erated", input_type=String(), position=0, doc=InputDocumentation(doc="help")), ToolInput(tag="in_ctg_name", input_type=String(), position=1, doc=InputDocumentation(doc="-o=, --out-ids-fn=            string  'all_shard_ids'              If given,")), ToolInput(tag="in_corresponding", input_type=String(), position=0, doc=InputDocumentation(doc="to the")), ToolInput(tag="in_shard_prefix_dot_block_id", input_type=String(), position=1, doc=InputDocumentation(doc="files."))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa_Polish_Split_V0_1_0().translate("wdl")

