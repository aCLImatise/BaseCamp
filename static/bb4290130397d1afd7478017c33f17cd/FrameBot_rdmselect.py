from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Framebot_Rdmselect_V0_1_0 = CommandToolBuilder(tool="FrameBot_rdmselect", base_command=["FrameBot", "rdmselect"], inputs=[ToolInput(tag="in_num_selection", input_type=Int(optional=True), prefix="--num-selection", doc=InputDocumentation(doc="number of sequence IDs for each sample. Default is the smallest sample size")), ToolInput(tag="in_exclude_samples", input_type=String(optional=True), prefix="--exclude-samples", doc=InputDocumentation(doc="list of sample names to be excluded from selection")), ToolInput(tag="in_rdm_select_sample_mapping", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_mapping", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Framebot_Rdmselect_V0_1_0().translate("wdl", allow_empty_container=True)

