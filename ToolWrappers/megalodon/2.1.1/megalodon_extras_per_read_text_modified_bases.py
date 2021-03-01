from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Megalodon_Extras_Per_Read_Text_Modified_Bases_V0_1_0 = CommandToolBuilder(tool="megalodon_extras_per_read_text_modified_bases", base_command=["megalodon_extras", "per_read_text", "modified_bases"], inputs=[ToolInput(tag="in_out_filename", input_type=File(optional=True), prefix="--out-filename", doc=InputDocumentation(doc="Output filename for text summary. Default: output into\nmegalodon results directory\n")), ToolInput(tag="in_output_dot", input_type=String(), position=2, doc=InputDocumentation(doc="optional arguments:"))], outputs=[ToolOutput(tag="out_out_filename", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out_filename", type_hint=File()), doc=OutputDocumentation(doc="Output filename for text summary. Default: output into\nmegalodon results directory\n"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Megalodon_Extras_Per_Read_Text_Modified_Bases_V0_1_0().translate("wdl", allow_empty_container=True)

