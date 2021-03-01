from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Coverage_3_6_Combine_V0_1_0 = CommandToolBuilder(tool="coverage_3.6_combine", base_command=["coverage-3.6", "combine"], inputs=[ToolInput(tag="in_append", input_type=Boolean(optional=True), prefix="--append", doc=InputDocumentation(doc="Append coverage data to .coverage, otherwise it starts\nclean each time.")), ToolInput(tag="in_debug", input_type=String(optional=True), prefix="--debug", doc=InputDocumentation(doc="Debug options, separated by commas")), ToolInput(tag="in_rcfile", input_type=File(optional=True), prefix="--rcfile", doc=InputDocumentation(doc="Specify configuration file.  Defaults to '.coveragerc'")), ToolInput(tag="in_path_n", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_3_6_Combine_V0_1_0().translate("wdl", allow_empty_container=True)

