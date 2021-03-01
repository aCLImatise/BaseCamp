from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Qcli_Make_Rst_V0_1_0 = CommandToolBuilder(tool="qcli_make_rst", base_command=["qcli_make_rst"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information during execution -- useful for\ndebugging [default: False]")), ToolInput(tag="in_input_fps", input_type=File(optional=True), prefix="--input_fps", doc=InputDocumentation(doc="the input file(s) to generate rst files for [REQUIRED]")), ToolInput(tag="in_output_dir", input_type=File(optional=True), prefix="--output_dir", doc=InputDocumentation(doc="the directory where the resulting rst file(s) should\nbe written [REQUIRED]\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Qcli_Make_Rst_V0_1_0().translate("wdl", allow_empty_container=True)

