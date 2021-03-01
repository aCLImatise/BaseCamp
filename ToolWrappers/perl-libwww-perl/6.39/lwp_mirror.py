from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Lwp_Mirror_V0_1_0 = CommandToolBuilder(tool="lwp_mirror", base_command=["lwp-mirror"], inputs=[ToolInput(tag="in_print_version_number", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="print version number of program")), ToolInput(tag="in_set_timeout_value", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Set timeout value")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-options", doc=InputDocumentation(doc="")), ToolInput(tag="in_url", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lwp_Mirror_V0_1_0().translate("wdl", allow_empty_container=True)

