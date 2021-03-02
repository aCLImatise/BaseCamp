from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bed12Tobed6_V0_1_0 = CommandToolBuilder(tool="bed12ToBed6", base_command=["bed12ToBed6"], inputs=[ToolInput(tag="in_force_score_be", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Force the score to be the (1-based) block number from the BED12.")), ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bed12Tobed6_V0_1_0().translate("wdl")

