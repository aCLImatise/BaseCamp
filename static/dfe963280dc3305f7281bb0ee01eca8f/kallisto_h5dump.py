from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Int

Kallisto_H5Dump_V0_1_0 = CommandToolBuilder(tool="kallisto_h5dump", base_command=["kallisto", "h5dump"], inputs=[ToolInput(tag="in_output_dir", input_type=Directory(optional=True), prefix="--output-dir", doc=InputDocumentation(doc="Directory to write output to")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_abundance_doth_five", input_type=Int(), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_output_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory to write output to"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kallisto_H5Dump_V0_1_0().translate("wdl", allow_empty_container=True)

