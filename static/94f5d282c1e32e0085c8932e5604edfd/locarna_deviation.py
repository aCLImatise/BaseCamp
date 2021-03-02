from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Locarna_Deviation_V0_1_0 = CommandToolBuilder(tool="locarna_deviation", base_command=["locarna_deviation"], inputs=[ToolInput(tag="in_deviation", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_aln_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_aln_file", input_type=File(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarna_Deviation_V0_1_0().translate("wdl", allow_empty_container=True)

