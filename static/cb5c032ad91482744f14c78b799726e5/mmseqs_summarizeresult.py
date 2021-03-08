from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, Int

Mmseqs_Summarizeresult_V0_1_0 = CommandToolBuilder(tool="mmseqs_summarizeresult", base_command=["mmseqs", "summarizeresult"], inputs=[ToolInput(tag="in_add_string_convert", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Add backtrace string (convert to alignments with mmseqs convertalis module) [0]")), ToolInput(tag="in_list_matches_fraction", input_type=Float(optional=True), prefix="-c", doc=InputDocumentation(doc="List matches above this fraction of aligned (covered) residues (see --cov-mode) [0.000]")), ToolInput(tag="in_overlap", input_type=Float(optional=True), prefix="--overlap", doc=InputDocumentation(doc="Maximum overlap of covered regions [0.000]")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="Number of CPU-cores used (all by default) [2]")), ToolInput(tag="in_compressed", input_type=Int(optional=True), prefix="--compressed", doc=InputDocumentation(doc="Write compressed output [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Summarizeresult_V0_1_0().translate("wdl")

