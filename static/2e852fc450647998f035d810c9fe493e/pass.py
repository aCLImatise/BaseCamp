from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Pass_V0_1_0 = CommandToolBuilder(tool="pass", base_command=["pass"], inputs=[ToolInput(tag="in_check_block", input_type=Int(optional=True), prefix="-check_block", doc=InputDocumentation(doc="\")), ToolInput(tag="in_seed_step", input_type=Int(optional=True), prefix="-seed_step", doc=InputDocumentation(doc="\")), ToolInput(tag="in_fid", input_type=Int(optional=True), prefix="-fid", doc=InputDocumentation(doc="[-phred64] > results.sam \")), ToolInput(tag="in_range", input_type=Int(optional=True), prefix="-range", doc=InputDocumentation(doc="600 600 -unique_pair 1 -unique_single 1 -stdout -pe_type 0 \")), ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="-tags", doc=InputDocumentation(doc="/1 /2 > paired_alignments.sam")), ToolInput(tag="in_lib_type", input_type=Int(optional=True), prefix="-lib_type", doc=InputDocumentation(doc="F3  > paired_alignments.sam"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pass_V0_1_0().translate("wdl", allow_empty_container=True)

