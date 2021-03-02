from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Boolean

Agg_Ingest1_V0_1_0 = CommandToolBuilder(tool="agg_ingest1", base_command=["agg", "ingest1"], inputs=[ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="agg will output output_prefix.bcf and output_prefix.tmp")), ToolInput(tag="in_fast_a_ref", input_type=File(optional=True), prefix="--fasta-ref", doc=InputDocumentation(doc="reference sequence")), ToolInput(tag="in_ignore_non_matching_ref", input_type=Boolean(optional=True), prefix="--ignore-non-matching-ref", doc=InputDocumentation(doc="skip non-matching ref alleles (will warn)")), ToolInput(tag="in_input_gvc_f", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Agg_Ingest1_V0_1_0().translate("wdl", allow_empty_container=True)

