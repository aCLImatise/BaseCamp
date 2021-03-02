from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Peakranger_Lc_V0_1_0 = CommandToolBuilder(tool="peakranger_lc", base_command=["peakranger", "lc"], inputs=[ToolInput(tag="in_arg_data_file", input_type=Boolean(optional=True), prefix="-d", doc=InputDocumentation(doc="[ --data ] arg      the data file")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="show progress when possible")), ToolInput(tag="in_input", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakranger_Lc_V0_1_0().translate("wdl", allow_empty_container=True)

