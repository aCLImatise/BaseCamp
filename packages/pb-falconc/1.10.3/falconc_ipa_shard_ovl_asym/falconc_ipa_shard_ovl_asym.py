from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Falconc_Ipa_Shard_Ovl_Asym_V0_1_0 = CommandToolBuilder(tool="falconc_ipa_shard_ovl_asym", base_command=["falconc", "ipa-shard-ovl-asym"], inputs=[ToolInput(tag="in_help_syntax", input_type=Boolean(optional=True), prefix="--help-syntax", doc=InputDocumentation(doc="advanced: prepend,plurals,..")), ToolInput(tag="in__maxnshards_int", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="=, --max-nshards=   int     REQUIRED  Maximum number of distributed jobs")), ToolInput(tag="in__shardprefix_string", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="=, --shard-prefix=  string  'shard'   The output. Shard files are\n(prefix).(shard_id).block_ids (though\nthey really are block_id ranges).")), ToolInput(tag="in__int_required", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="=, --n=             int     REQUIRED  Generate comparisons for\nupper-triangle of nxn matrix")), ToolInput(tag="in_outidsfn_string_corresponding", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="=, --out-ids-fn=    string  ''        If given, this lists the shard_ids,\n0 thru N-1, corresponding to the\nshard-prefix.block_id files. Useful\nfor Cromwell.\n")), ToolInput(tag="in_ipa_shard_ovl_asym", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/pb-falconc:1.10.3--he513fc3_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Falconc_Ipa_Shard_Ovl_Asym_V0_1_0().translate("wdl")

