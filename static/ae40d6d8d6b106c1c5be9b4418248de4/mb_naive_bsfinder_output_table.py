from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Mb_Naive_Bsfinder_Output_Table_V0_1_0 = CommandToolBuilder(tool="mb_naive_bsfinder_output_table", base_command=["mb-naive-bsfinder", "output_table"], inputs=[ToolInput(tag="in_min_transitions", input_type=Int(optional=True), prefix="--min_transitions", doc=InputDocumentation(doc="")), ToolInput(tag="in_mb_naive_bs_finder", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mb_Naive_Bsfinder_Output_Table_V0_1_0().translate("wdl", allow_empty_container=True)

