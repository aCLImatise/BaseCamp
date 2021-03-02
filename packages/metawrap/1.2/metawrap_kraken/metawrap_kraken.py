from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Int, Boolean

Metawrap_Kraken_V0_1_0 = CommandToolBuilder(tool="metawrap_kraken", base_command=["metawrap", "kraken"], inputs=[ToolInput(tag="in_output_directory", input_type=Directory(optional=True), prefix="-o", doc=InputDocumentation(doc="output directory")), ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads")), ToolInput(tag="in_read_subsampling_number", input_type=Int(optional=True), prefix="-s", doc=InputDocumentation(doc="read subsampling number (default=all)")), ToolInput(tag="in_no_preload", input_type=Boolean(optional=True), prefix="--no-preload", doc=InputDocumentation(doc="do not pre-load the kraken DB into memory (slower, but lower memory requirement)"))], outputs=[ToolOutput(tag="out_output_directory", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_output_directory", type_hint=File()), doc=OutputDocumentation(doc="output directory"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Metawrap_Kraken_V0_1_0().translate("wdl", allow_empty_container=True)

