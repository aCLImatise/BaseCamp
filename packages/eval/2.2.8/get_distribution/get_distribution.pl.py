from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean

Get_Distribution_Pl_V0_1_0 = CommandToolBuilder(tool="get_distribution.pl", base_command=["get_distribution.pl"], inputs=[ToolInput(tag="in_specify_distribution_mode", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc=": Specify distribution mode.  Must be a number selected from the\nlist below.  Default is mode 1.")), ToolInput(tag="in_inputs_gtf_files", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc=": Inputs are gtf files instead of list files")), ToolInput(tag="in_quick_load_file", input_type=Boolean(optional=True), prefix="-q", doc=InputDocumentation(doc=": Quick load the gtf file.  Do not check them for errors.")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Get_Distribution_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

