from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Float

Calcprobs_Py_V0_1_0 = CommandToolBuilder(tool="calcprobs.py", base_command=["calcprobs.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Read structures from input file. Format must be dot-\nbracket structures, each per one line with a trailing\nline containing only a semi-colon. (default: None)")), ToolInput(tag="in_temperature", input_type=Float(optional=True), prefix="--temperature", doc=InputDocumentation(doc="Temperature of the energy calculations. (default:\n37.0)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Calcprobs_Py_V0_1_0().translate("wdl", allow_empty_container=True)

