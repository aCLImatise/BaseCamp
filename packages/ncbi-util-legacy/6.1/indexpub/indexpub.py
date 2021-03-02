from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Indexpub_V0_1_0 = CommandToolBuilder(tool="indexpub", base_command=["indexpub"], inputs=[ToolInput(tag="in_input_data_default", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="Input data [Data In]\ndefault = medline.val\nData Type = Pub-set")), ToolInput(tag="in_input_data_binary", input_type=Boolean(optional=True), prefix="-b", doc=InputDocumentation(doc="Input data is binary [T/F]  Optional\ndefault = T")), ToolInput(tag="in_output_index_table", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Output index table [File Out]\ndefault = medline.idx\n"))], outputs=[ToolOutput(tag="out_output_index_table", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_index_table", type_hint=File()), doc=OutputDocumentation(doc="Output index table [File Out]\ndefault = medline.idx\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Indexpub_V0_1_0().translate("wdl", allow_empty_container=True)

