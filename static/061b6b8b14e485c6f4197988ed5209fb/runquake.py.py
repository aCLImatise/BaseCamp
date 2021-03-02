from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Runquake_Py_V0_1_0 = CommandToolBuilder(tool="runquake.py", base_command=["runquake.py"], inputs=[ToolInput(tag="in_parameters", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_are", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_specified", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_in", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_spec_file", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Runquake_Py_V0_1_0().translate("wdl", allow_empty_container=True)

