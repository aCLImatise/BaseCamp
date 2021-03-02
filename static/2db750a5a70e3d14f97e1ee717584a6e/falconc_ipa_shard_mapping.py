from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Ipa_Shard_Mapping_V0_1_0 = CommandToolBuilder(tool="falconc_ipa_shard_mapping", base_command=["falconc", "ipa-shard-mapping"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__maxnshards_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-nshards=     int     REQUIRED  Maximum number of distributed jobs")), ToolInput(tag="in__shardprefix_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --shard-prefix=    string  'shard'   The output. Shard files are\n(prefix).(shard_id).block_ids\n(though they really are block_id\nranges).")), ToolInput(tag="in__nqueryblocks_int", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="=, --n_query_blocks=  int     REQUIRED  Number of blocks in query db")), ToolInput(tag="in_n_target_blocks", input_type=Boolean(optional=True), prefix="--n_target_blocks", doc=InputDocumentation(doc="=      int     REQUIRED  Number of blocks in target db")), ToolInput(tag="in_outidsfn_string_given", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-ids-fn=      string  ''        If given, this lists the shard_ids,\n0 thru N-1, corresponding to the\nshard-prefix.block_id files. Useful\nfor Cromwell.\n")), ToolInput(tag="in_ipa_shard_mapping", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nim-falcon:3.0.2--h1341992_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa_Shard_Mapping_V0_1_0().translate("wdl")

