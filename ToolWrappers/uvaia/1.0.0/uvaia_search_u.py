from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Uvaia_Search_U_V0_1_0 = CommandToolBuilder(tool="uvaia_search_u", base_command=["uvaia_search_u"], inputs=[ToolInput(tag="in_n_best", input_type=Int(optional=True), prefix="--nbest", doc=InputDocumentation(doc="number of best reference sequences per query to show (default=4)")), ToolInput(tag="in_reference", input_type=String(optional=True), prefix="--reference", doc=InputDocumentation(doc="reference sequences"))], outputs=[], container="quay.io/biocontainers/uvaia:1.0.0--hbcae180_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uvaia_Search_U_V0_1_0().translate("wdl")

