from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Mmseqs_Mergedbs_V0_1_0 = CommandToolBuilder(tool="mmseqs_mergedbs", base_command=["mmseqs", "mergedbs"], inputs=[ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_prefixes", input_type=String(optional=True), prefix="--prefixes", doc=InputDocumentation(doc="Comma separated list of prefixes for each entry []")), ToolInput(tag="in_merge_stop_empty", input_type=Boolean(optional=True), prefix="--merge-stop-empty", doc=InputDocumentation(doc="Don't continue merging entries after an empty entry [0]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Mergedbs_V0_1_0().translate("wdl")

