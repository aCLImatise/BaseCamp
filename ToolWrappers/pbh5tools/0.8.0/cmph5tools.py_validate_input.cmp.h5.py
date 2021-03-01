from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int

Cmph5Tools_Py_Validate_Input_Cmp_H5_V0_1_0 = CommandToolBuilder(tool="cmph5tools.py_validate_input.cmp.h5", base_command=["cmph5tools.py", "validate", "input.cmp.h5"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="--profile", doc=InputDocumentation(doc="")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="")), ToolInput(tag="in_c_mph_five_tools_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cmph5Tools_Py_Validate_Input_Cmp_H5_V0_1_0().translate("wdl", allow_empty_container=True)

