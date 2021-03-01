from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Falconc_Ipa2_Polish_Prepare_V0_1_0 = CommandToolBuilder(tool="falconc_ipa2_polish_prepare", base_command=["falconc", "ipa2-polish-prepare"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__maxnshards_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-nshards=   int     REQUIRED    Maximum number of distributed jobs")), ToolInput(tag="in__shardprefix_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --shard-prefix=  string  'shard_id'  The output. Shard files are\n(prefix).(shard_id).block_ids")), ToolInput(tag="in__blockprefix_string", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="=, --block-prefix=  string  'block_id'  Block files are\n(prefix).(block_id).reads (prepared\npreviously)")), ToolInput(tag="in_outidsfn_string_given", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-ids-fn=    string  ''          If given, this lists the shard_ids,\n0 thru N-1, corresponding to the\nshard-prefix.block_id files.\n")), ToolInput(tag="in_ip_a_two_polish_prepare", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa2_Polish_Prepare_V0_1_0().translate("wdl")

