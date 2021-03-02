from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int

Spacepharer_Findpam_V0_1_0 = CommandToolBuilder(tool="spacepharer_findpam", base_command=["spacepharer", "findpam"], inputs=[ToolInput(tag="in_flanking_seq_len", input_type=Int(optional=True), prefix="--flanking-seq-len", doc=InputDocumentation(doc="Length of protospacer flanking sequence to extract for possible PAMs scanning [10]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [8]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/spacepharer:4.228b9e5--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spacepharer_Findpam_V0_1_0().translate("wdl")

