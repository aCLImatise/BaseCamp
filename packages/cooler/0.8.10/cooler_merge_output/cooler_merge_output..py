from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Cooler_Merge_Output__V0_1_0 = CommandToolBuilder(tool="cooler_merge_output.", base_command=["cooler", "merge", "output."], inputs=[ToolInput(tag="in_cooler", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_merge", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_path", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_paths", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cooler:0.8.10--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cooler_Merge_Output__V0_1_0().translate("wdl")

