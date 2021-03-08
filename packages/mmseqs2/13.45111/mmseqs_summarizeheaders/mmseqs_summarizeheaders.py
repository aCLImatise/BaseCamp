from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mmseqs_Summarizeheaders_V0_1_0 = CommandToolBuilder(tool="mmseqs_summarizeheaders", base_command=["mmseqs", "summarizeheaders"], inputs=[ToolInput(tag="in_header_type", input_type=Int(optional=True), prefix="--header-type", doc=InputDocumentation(doc="Header Type: 1: Uniclust, 2: Metaclust [1]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]")), ToolInput(tag="in_summary_prefix", input_type=String(optional=True), prefix="--summary-prefix", doc=InputDocumentation(doc="Set the cluster summary prefix [cl]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Summarizeheaders_V0_1_0().translate("wdl")

