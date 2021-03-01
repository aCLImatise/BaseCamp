from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Knot_Filter_Tig_V0_1_0 = CommandToolBuilder(tool="knot.filter_tig", base_command=["knot.filter_tig"], inputs=[ToolInput(tag="in_t", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_filter_contig", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/knot-asm-analysis:1.3.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Knot_Filter_Tig_V0_1_0().translate("wdl")

