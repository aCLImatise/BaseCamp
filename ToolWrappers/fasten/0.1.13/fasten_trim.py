from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Fasten_Trim_V0_1_0 = CommandToolBuilder(tool="fasten_trim", base_command=["fasten_trim"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_first_base", input_type=Int(optional=True), prefix="--first-base", doc=InputDocumentation(doc="The first base to keep (default: 0)")), ToolInput(tag="in_last_base", input_type=Int(optional=True), prefix="--last-base", doc=InputDocumentation(doc="The last base to keep. If negative, counts from the\nright. (default: 0)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Trim_V0_1_0().translate("wdl", allow_empty_container=True)

