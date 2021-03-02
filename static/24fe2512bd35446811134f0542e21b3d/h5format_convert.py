from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

H5Format_Convert_V0_1_0 = CommandToolBuilder(tool="h5format_convert", base_command=["h5format_convert"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Turn on verbose mode")), ToolInput(tag="in_d_name", input_type=String(optional=True), prefix="--dname", doc=InputDocumentation(doc="Pathname for the dataset")), ToolInput(tag="in_noop", input_type=Boolean(optional=True), prefix="--noop", doc=InputDocumentation(doc="Perform all the steps except the actual conversion")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help                Print a usage message and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Format_Convert_V0_1_0().translate("wdl", allow_empty_container=True)

