from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Ipa_Shard_Blocks_M4_V0_1_0 = CommandToolBuilder(tool="falconc_ipa_shard_blocks_m4", base_command=["falconc", "ipa-shard-blocks-m4"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__maxnshards_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-nshards=   int     REQUIRED         Maximum number of distributed")), ToolInput(tag="in__blockprefix_string", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --block-prefix=  string  'block'          Block files are\n(prefix).(block_id).m4\n(prepared previously)")), ToolInput(tag="in_outidsfn_string_given", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-ids-fn=    string  'all_shard_ids'  If given, this lists the\nshard_ids, 0 thru N-1,\ncorresponding to the\nshard-prefix.block_id files.\n")), ToolInput(tag="in_jobs", input_type=String(), position=0, doc=InputDocumentation(doc="-s=, --shard-prefix=  string  'shard'          The output. Shard files are"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa_Shard_Blocks_M4_V0_1_0().translate("wdl", allow_empty_container=True)

