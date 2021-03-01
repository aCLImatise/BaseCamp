from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Coverage3_Erase_V0_1_0 = CommandToolBuilder(tool="coverage3_erase", base_command=["coverage3", "erase"], inputs=[ToolInput(tag="in_debug", input_type=String(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug options, separated by commas")), ToolInput(tag="in_rcfile", input_type=File(optional=True), prefix="--rcfile", doc=InputDocumentation(doc="Specify configuration file.  Defaults to '.coveragerc'"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage3_Erase_V0_1_0().translate("wdl", allow_empty_container=True)

