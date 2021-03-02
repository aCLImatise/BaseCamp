from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Portcullis_V0_1_0 = CommandToolBuilder(tool="portcullis", base_command=["portcullis"], inputs=[ToolInput(tag="in_print_extra_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]      Print extra information")), ToolInput(tag="in_junctions", input_type=String(), position=0, doc=InputDocumentation(doc="Usage: portcullis [options] <mode> <mode_args>"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Portcullis_V0_1_0().translate("wdl", allow_empty_container=True)

