from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Spectrast2Spectrast_Irt_Py_V0_1_0 = CommandToolBuilder(tool="spectrast2spectrast_irt.py", base_command=["spectrast2spectrast_irt.py"], inputs=[ToolInput(tag="in__input_file", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[--in]: input file")), ToolInput(tag="in__output_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="[--out]: output file"))], outputs=[ToolOutput(tag="out__output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in__output_file", type_hint=File()), doc=OutputDocumentation(doc="[--out]: output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Spectrast2Spectrast_Irt_Py_V0_1_0().translate("wdl", allow_empty_container=True)

