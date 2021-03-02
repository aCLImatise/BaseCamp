from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, File, Boolean

Csb_Embd_V0_1_0 = CommandToolBuilder(tool="csb_embd", base_command=["csb-embd"], inputs=[ToolInput(tag="in_psf_size", input_type=Int(optional=True), prefix="--psf-size", doc=InputDocumentation(doc="size of the point spread function (default=15)")), ToolInput(tag="in_output", input_type=Directory(optional=True), prefix="--output", doc=InputDocumentation(doc="output directory of the sharpened maps (default=.)")), ToolInput(tag="in_iterations", input_type=Int(optional=True), prefix="--iterations", doc=InputDocumentation(doc="number of iterations (default=1000)")), ToolInput(tag="in_output_frequency", input_type=File(optional=True), prefix="--output-frequency", doc=InputDocumentation(doc="create a map file each f iterations (default=50)")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="verbose mode (default=False)"))], outputs=[ToolOutput(tag="out_output", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="output directory of the sharpened maps (default=.)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Csb_Embd_V0_1_0().translate("wdl", allow_empty_container=True)

