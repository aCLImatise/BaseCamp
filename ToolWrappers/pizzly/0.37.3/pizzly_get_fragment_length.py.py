from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Pizzly_Get_Fragment_Length_Py_V0_1_0 = CommandToolBuilder(tool="pizzly_get_fragment_length.py", base_command=["pizzly_get_fragment_length.py"], inputs=[ToolInput(tag="in_python", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_get_fragment_length_do_tpy", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_h_five_file", input_type=Int(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_cut_off", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pizzly_Get_Fragment_Length_Py_V0_1_0().translate("wdl", allow_empty_container=True)

