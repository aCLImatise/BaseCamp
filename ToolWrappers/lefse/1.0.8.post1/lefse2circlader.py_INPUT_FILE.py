from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Lefse2Circlader_Py_Input_File_V0_1_0 = CommandToolBuilder(tool="lefse2circlader.py_INPUT_FILE", base_command=["lefse2circlader.py", "INPUT_FILE"], inputs=[ToolInput(tag="in_l", input_type=String(optional=True), prefix="-l", doc=InputDocumentation(doc="")), ToolInput(tag="in_lefsetwocircladerdotpy", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_with", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_label", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lefse2Circlader_Py_Input_File_V0_1_0().translate("wdl", allow_empty_container=True)

