from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Mmseqs_Result2Flat_V0_1_0 = CommandToolBuilder(tool="mmseqs_result2flat", base_command=["mmseqs", "result2flat"], inputs=[ToolInput(tag="in_use_fast_a_header", input_type=Boolean(optional=True), prefix="--use-fasta-header", doc=InputDocumentation(doc="Use the id parsed from the fasta header as the index key instead of using incrementing numeric identifiers [0]")), ToolInput(tag="in_verbosity_level_errors", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbosity level: 0: quiet, 1: +errors, 2: +warnings, 3: +info [3]"))], outputs=[], container="quay.io/biocontainers/mmseqs2:13.45111--h2d02072_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Result2Flat_V0_1_0().translate("wdl")

