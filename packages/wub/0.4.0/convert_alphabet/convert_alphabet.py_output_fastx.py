from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Convert_Alphabet_Py_Output_Fastx_V0_1_0 = CommandToolBuilder(tool="convert_alphabet.py_output_fastx", base_command=["convert_alphabet.py", "output_fastx"], inputs=[ToolInput(tag="in_r", input_type=Boolean(optional=True), prefix="-R", doc=InputDocumentation(doc="")), ToolInput(tag="in_d", input_type=Boolean(optional=True), prefix="-D", doc=InputDocumentation(doc="")), ToolInput(tag="in_o", input_type=String(optional=True), prefix="-o", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_convert_alphabet_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Convert_Alphabet_Py_Output_Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

