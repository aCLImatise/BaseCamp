from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Filter_Stage_2_Prl_V0_1_0 = CommandToolBuilder(tool="filter_stage_2.prl", base_command=["filter-stage-2.prl"], inputs=[ToolInput(tag="in_cat", input_type=File(optional=True), prefix="--cat", doc=InputDocumentation(doc="The RepeatMasker output file. It can either be a .cat file or a .out\nfile, but a .out file is preferred.")), ToolInput(tag="in_thresh", input_type=Boolean(optional=True), prefix="--thresh", doc=InputDocumentation(doc="The number of times a sequence must appear for it to be reported."))], outputs=[ToolOutput(tag="out_cat", output_type=File(optional=True), selector=InputSelector(input_to_select="in_cat", type_hint=File()), doc=OutputDocumentation(doc="The RepeatMasker output file. It can either be a .cat file or a .out\nfile, but a .out file is preferred."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Stage_2_Prl_V0_1_0().translate("wdl", allow_empty_container=True)

