from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Framebot_Taxonabund_V0_1_0 = CommandToolBuilder(tool="FrameBot_taxonAbund", base_command=["FrameBot", "taxonAbund"], inputs=[ToolInput(tag="in_seq_coverage", input_type=String(optional=True), prefix="--seqCoverage", doc=InputDocumentation(doc="contains the ID and coverage separated by space or\ntab. Used to adjust the sequence abundance")), ToolInput(tag="in_identity", input_type=Int(optional=True), prefix="--identity", doc=InputDocumentation(doc="the minimum protein identity, default is 0, range\n[0-100]")), ToolInput(tag="in_frame_bot_alignment_file_or_dir", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_seq_lineage", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out_file", output_type=File(), selector=InputSelector(input_to_select="in_out_file", type_hint=File()), doc=OutputDocumentation(doc=""))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Framebot_Taxonabund_V0_1_0().translate("wdl", allow_empty_container=True)

