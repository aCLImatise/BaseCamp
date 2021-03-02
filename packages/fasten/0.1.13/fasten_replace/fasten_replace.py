from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Fasten_Replace_V0_1_0 = CommandToolBuilder(tool="fasten_replace", base_command=["fasten_replace"], inputs=[ToolInput(tag="in_num_cpus", input_type=Int(optional=True), prefix="--numcpus", doc=InputDocumentation(doc="Number of CPUs (default: 1)")), ToolInput(tag="in_paired_end", input_type=Boolean(optional=True), prefix="--paired-end", doc=InputDocumentation(doc="The input reads are interleaved paired-end")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print more status messages")), ToolInput(tag="in_find", input_type=String(optional=True), prefix="--find", doc=InputDocumentation(doc="Regular expression (default: '.')")), ToolInput(tag="in_replace", input_type=String(optional=True), prefix="--replace", doc=InputDocumentation(doc="String to replace each match")), ToolInput(tag="in_which", input_type=String(optional=True), prefix="--which", doc=InputDocumentation(doc="Which field to match on? ID, SEQ, QUAL. Default: SEQ"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasten_Replace_V0_1_0().translate("wdl", allow_empty_container=True)

