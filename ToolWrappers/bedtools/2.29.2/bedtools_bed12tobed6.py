from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Bedtools_Bed12Tobed6_V0_1_0 = CommandToolBuilder(tool="bedtools_bed12tobed6", base_command=["bedtools", "bed12tobed6"], inputs=[ToolInput(tag="in_force_score_be", input_type=Boolean(optional=True), prefix="-n", doc=InputDocumentation(doc="Force the score to be the (1-based) block number from the BED12.")), ToolInput(tag="in_i", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Bed12Tobed6_V0_1_0().translate("wdl", allow_empty_container=True)

