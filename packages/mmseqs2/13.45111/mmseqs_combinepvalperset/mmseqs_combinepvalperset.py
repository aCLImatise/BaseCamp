from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int

Mmseqs_Combinepvalperset_V0_1_0 = CommandToolBuilder(tool="mmseqs_combinepvalperset", base_command=["mmseqs", "combinepvalperset"], inputs=[ToolInput(tag="in_alpha", input_type=Float(optional=True), prefix="--alpha", doc=InputDocumentation(doc="Set alpha for combining p-values during aggregation [1.000]")), ToolInput(tag="in_aggregation_mode", input_type=Int(optional=True), prefix="--aggregation-mode", doc=InputDocumentation(doc="Combined P-values computed from 0: multi-hit, 1: minimum of all P-values, 2: product-of-P-values, 3: truncated product [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Combinepvalperset_V0_1_0().translate("wdl")

