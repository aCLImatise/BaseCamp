from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Glam2Mask_V0_1_0 = CommandToolBuilder(tool="glam2mask", base_command=["glam2mask"], inputs=[ToolInput(tag="in_output_file_stdout", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=": output file (stdout)")), ToolInput(tag="in__mask_character", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc=": mask character (x)"))], outputs=[ToolOutput(tag="out_output_file_stdout", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file_stdout", type_hint=File()), doc=OutputDocumentation(doc=": output file (stdout)"))], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Glam2Mask_V0_1_0().translate("wdl")

