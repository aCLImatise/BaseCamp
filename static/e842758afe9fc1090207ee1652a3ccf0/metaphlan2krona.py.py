from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Metaphlan2Krona_Py_V0_1_0 = CommandToolBuilder(tool="metaphlan2krona.py", base_command=["metaphlan2krona.py"], inputs=[ToolInput(tag="in_profile", input_type=File(optional=True), prefix="--profile", doc=InputDocumentation(doc="The input file is the MetaPhlAn standard result file")), ToolInput(tag="in_krona", input_type=File(optional=True), prefix="--krona", doc=InputDocumentation(doc="the Krons output file name\n"))], outputs=[ToolOutput(tag="out_krona", output_type=File(optional=True), selector=InputSelector(input_to_select="in_krona", type_hint=File()), doc=OutputDocumentation(doc="the Krons output file name\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metaphlan2Krona_Py_V0_1_0().translate("wdl", allow_empty_container=True)

