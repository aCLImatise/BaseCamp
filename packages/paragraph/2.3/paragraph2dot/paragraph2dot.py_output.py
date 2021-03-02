from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Paragraph2Dot_Py_Output_V0_1_0 = CommandToolBuilder(tool="paragraph2dot.py_output", base_command=["paragraph2dot.py", "output"], inputs=[ToolInput(tag="in_paragraph_two_dot_do_tpy", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Paragraph2Dot_Py_Output_V0_1_0().translate("wdl", allow_empty_container=True)

