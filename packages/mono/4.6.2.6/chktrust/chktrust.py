from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Chktrust_V0_1_0 = CommandToolBuilder(tool="chktrust", base_command=["chktrust"], inputs=[ToolInput(tag="in_quiet_mode_gui", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc="quiet mode (no gui)")), ToolInput(tag="in_verbose_mode_display", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode (display status for every steps)")), ToolInput(tag="in_filename", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Chktrust_V0_1_0().translate("wdl", allow_empty_container=True)

