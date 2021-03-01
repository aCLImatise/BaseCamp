from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Transcov_Pick_Subset_V0_1_0 = CommandToolBuilder(tool="transcov_pick_subset", base_command=["transcov", "pick-subset"], inputs=[ToolInput(tag="in_input_sample", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_index_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ids_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Transcov_Pick_Subset_V0_1_0().translate("wdl", allow_empty_container=True)

