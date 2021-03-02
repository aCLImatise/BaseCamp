from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Merge_Results_In2_V0_1_0 = CommandToolBuilder(tool="merge_results_in2", base_command=["merge_results", "in2"], inputs=[ToolInput(tag="in_merge_results", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_one", input_type=Int(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_two", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/batch_brb:1.0.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Results_In2_V0_1_0().translate("wdl")

