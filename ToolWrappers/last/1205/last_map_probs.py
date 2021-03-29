from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int

Last_Map_Probs_V0_1_0 = CommandToolBuilder(tool="last_map_probs", base_command=["last-map-probs"], inputs=[ToolInput(tag="in_mis_map", input_type=Float(optional=True), prefix="--mismap", doc=InputDocumentation(doc="don't write alignments with mismap probability > M\n(default: 0.01)")), ToolInput(tag="in_score", input_type=Int(optional=True), prefix="--score", doc=InputDocumentation(doc="don't write alignments with score < S (default:\ne+t*ln[1000])\n"))], outputs=[], container="quay.io/biocontainers/last:1205--h8b12597_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Last_Map_Probs_V0_1_0().translate("wdl")

