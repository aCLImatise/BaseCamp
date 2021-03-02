from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Mergefastq_P_V0_1_0 = CommandToolBuilder(tool="mergefastq_p", base_command=["mergefastq-p"], inputs=[ToolInput(tag="in_merge", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_separate", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_mate", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_pair", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_files", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_into", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_one", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mergefastq_P_V0_1_0().translate("wdl", allow_empty_container=True)

