from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, Boolean, String

Seqtk_Trimfq_V0_1_0 = CommandToolBuilder(tool="seqtk_trimfq", base_command=["seqtk", "trimfq"], inputs=[ToolInput(tag="in_error_rate_threshold", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="error rate threshold (disabled by -b/-e) [0.05]")), ToolInput(tag="in_maximally_trim_int", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="maximally trim down to INT bp (disabled by -b/-e) [30]")), ToolInput(tag="in_trim_int_bp_left_disable_ql", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="trim INT bp from left (non-zero to disable -q/-l) [0]")), ToolInput(tag="in_trim_int_bp_right_disable_ql", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="trim INT bp from right (non-zero to disable -q/-l) [0]")), ToolInput(tag="in_retain_disable_ql", input_type=Int(optional=True), prefix="-L", doc=InputDocumentation(doc="retain at most INT bp from the 5'-end (non-zero to disable -q/-l) [0]")), ToolInput(tag="in_force_fastq_output", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="force FASTQ output")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Trimfq_V0_1_0().translate("wdl", allow_empty_container=True)

