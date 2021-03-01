from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, Boolean, String

Alignkmers_V0_1_0 = CommandToolBuilder(tool="alignKMers", base_command=["alignKMers"], inputs=[ToolInput(tag="in__unaligned_kmers", input_type=File(optional=True), prefix="-i", doc=InputDocumentation(doc="= unaligned k-mers")), ToolInput(tag="in_minimum_overlap_align", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="= minimum overlap to align [default=3]")), ToolInput(tag="in_also_reverse_complement", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="= also reverse complement")), ToolInput(tag="in__penalty_mismatches", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="= penalty for mismatches [default=1]")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="= where to output results [default=stdout]")), ToolInput(tag="in_l", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="= where to output results [default=stderr]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignkmers_V0_1_0().translate("wdl", allow_empty_container=True)

