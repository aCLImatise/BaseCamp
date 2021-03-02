from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Pblayout_M4_Index_V0_1_0 = CommandToolBuilder(tool="pblayout_m4_index", base_command=["pblayout", "m4-index"], inputs=[ToolInput(tag="in_piles", input_type=Boolean(optional=True), prefix="--piles", doc=InputDocumentation(doc="STR  Path to a file with a list of read names for which to fetch the piles. One read name per line.")), ToolInput(tag="in_in_do_tm_four", input_type=Int(), position=0, doc=InputDocumentation(doc="STR  Input M4."))], outputs=[], container="quay.io/biocontainers/pbipa:1.3.2--hee625c5_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pblayout_M4_Index_V0_1_0().translate("wdl")

