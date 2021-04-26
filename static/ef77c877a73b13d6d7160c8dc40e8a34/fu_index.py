from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Fu_Index_V0_1_0 = CommandToolBuilder(tool="fu_index", base_command=["fu-index"], inputs=[ToolInput(tag="in_max_reads", input_type=Int(optional=True), prefix="--max-reads", doc=InputDocumentation(doc="Evaluate INT number of reads [default: 1000]")), ToolInput(tag="in_min_ratio", input_type=Float(optional=True), prefix="--min-ratio", doc=InputDocumentation(doc="Minimum ratio of matches of the top index [default: 0.85]")), ToolInput(tag="in_print_verbose_log", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print verbose log")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_print", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_show", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_var_6", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/seqfu:0.9.5--h38613fd_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fu_Index_V0_1_0().translate("wdl")

