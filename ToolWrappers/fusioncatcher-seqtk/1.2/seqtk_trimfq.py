from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Int, String

Seqtk_Trimfq_V0_1_0 = CommandToolBuilder(tool="seqtk_trimfq", base_command=["seqtk", "trimfq"], inputs=[ToolInput(tag="in_error_rate_threshold", input_type=Float(optional=True), prefix="-q", doc=InputDocumentation(doc="error rate threshold (disabled by -b/-e/-B/-E) [0.05]")), ToolInput(tag="in_maximally_trim_int", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="maximally trim down to INT bp (disabled by -b/-e/-B/-E) [30]")), ToolInput(tag="in_trimming_bebe_produce", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="trimming by -b/-e/-B/-E shall not produce reads shorter then INT bp [1]")), ToolInput(tag="in_trim_int_bp_left_disable_q", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="trim INT bp from left (non-zero to disable -q) [0]")), ToolInput(tag="in_trim_int_bp_right_disable_q", input_type=Int(optional=True), prefix="-e", doc=InputDocumentation(doc="trim INT bp from right (non-zero to disable -q) [0]")), ToolInput(tag="in_keep_first_bp", input_type=Int(optional=True), prefix="-B", doc=InputDocumentation(doc="keep first INT bp from left (non-zero to disable -q/-e/-E) [0]")), ToolInput(tag="in_keep_last_bp", input_type=Int(optional=True), prefix="-E", doc=InputDocumentation(doc="keep last INT bp from right (non-zero to disable -q/-b/-B) [0]")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Trimfq_V0_1_0().translate("wdl", allow_empty_container=True)

