from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Mmseqs_Result2Flat_V0_1_0 = CommandToolBuilder(tool="mmseqs_result2flat", base_command=["mmseqs", "result2flat"], inputs=[ToolInput(tag="in_use_fast_a_header", input_type=Boolean(optional=True), prefix="--use-fasta-header", doc=InputDocumentation(doc="false           use the id parsed from the fasta header as the index key instead of using incrementing numeric identifiers")), ToolInput(tag="in_verbosity_level_nothing", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="3               verbosity level: 0=nothing, 1: +errors, 2: +warnings, 3: +info"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mmseqs_Result2Flat_V0_1_0().translate("wdl", allow_empty_container=True)

