from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Hmmer2Filtered_Best_Py_V0_1_0 = CommandToolBuilder(tool="hmmer2filtered_best.py", base_command=["hmmer2filtered_best.py"], inputs=[ToolInput(tag="in_parse", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_hmmer", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_and", input_type=String(), position=4, doc=InputDocumentation(doc="")), ToolInput(tag="in_generated", input_type=String(), position=5, doc=InputDocumentation(doc="")), ToolInput(tag="in_filtered", input_type=String(), position=6, doc=InputDocumentation(doc="")), ToolInput(tag="in_best", input_type=String(), position=7, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hmmer2Filtered_Best_Py_V0_1_0().translate("wdl", allow_empty_container=True)

