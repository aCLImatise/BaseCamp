from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Save_Model_Py_V0_1_0 = CommandToolBuilder(tool="save_model.py", base_command=["save_model.py"], inputs=[ToolInput(tag="in_trunk", input_type=Boolean(optional=True), prefix="--trunk", doc=InputDocumentation(doc="Save only trunk [Default: False]")), ToolInput(tag="in_params_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_model_file", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_out_model_file", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/basenji:0.5--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Save_Model_Py_V0_1_0().translate("wdl")

