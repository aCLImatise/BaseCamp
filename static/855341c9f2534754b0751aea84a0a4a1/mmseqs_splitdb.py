from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Mmseqs_Splitdb_V0_1_0 = CommandToolBuilder(tool="mmseqs_splitdb", base_command=["mmseqs", "splitdb"], inputs=[ToolInput(tag="in_split", input_type=Int(optional=True), prefix="--split", doc=InputDocumentation(doc="Split input into N equally distributed chunks. 0: set the best split automatically [0]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_split_aa", input_type=Boolean(optional=True), prefix="--split-aa", doc=InputDocumentation(doc="Try to find the best split boundaries by entry lengths [0]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Splitdb_V0_1_0().translate("wdl")

