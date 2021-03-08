from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Besthitperset_V0_1_0 = CommandToolBuilder(tool="mmseqs_besthitperset", base_command=["mmseqs", "besthitperset"], inputs=[ToolInput(tag="in_simple_best_hit", input_type=Boolean(optional=True), prefix="--simple-best-hit", doc=InputDocumentation(doc="Update the p-value by a single best hit, or by best and second best hits [1]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Besthitperset_V0_1_0().translate("wdl")

