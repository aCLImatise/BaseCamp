from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

H5Mkgrp_V0_1_0 = CommandToolBuilder(tool="h5mkgrp", base_command=["h5mkgrp"], inputs=[ToolInput(tag="in_latest", input_type=Boolean(optional=True), prefix="--latest", doc=InputDocumentation(doc="Use latest version of file format to create groups")), ToolInput(tag="in_parents", input_type=Boolean(optional=True), prefix="--parents", doc=InputDocumentation(doc="No error if existing, make parent groups as needed")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Print information about OBJECTS and OPTIONS")), ToolInput(tag="in_options", input_type=String(), position=0, doc=InputDocumentation(doc="-h, --help         Print a usage message and exit"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    H5Mkgrp_V0_1_0().translate("wdl", allow_empty_container=True)

