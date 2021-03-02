from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Pyprophet_Merge_V0_1_0 = CommandToolBuilder(tool="pyprophet_merge", base_command=["pyprophet", "merge"], inputs=[ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Merged OSW output file.  [required]")), ToolInput(tag="in_no_same_run", input_type=Boolean(optional=True), prefix="--no-same_run", doc=InputDocumentation(doc="Assume input files are from same run (deletes\nrun information).")), ToolInput(tag="in_template", input_type=File(optional=True), prefix="--template", doc=InputDocumentation(doc="Template OSW file.  [required]")), ToolInput(tag="in_in_files", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Merged OSW output file.  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pyprophet_Merge_V0_1_0().translate("wdl", allow_empty_container=True)

