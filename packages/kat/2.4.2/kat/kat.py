from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Kat_V0_1_0 = CommandToolBuilder(tool="kat", base_command=["kat"], inputs=[ToolInput(tag="in_print_extra_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="[ --verbose ]      Print extra information")), ToolInput(tag="in_distributions_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kat_V0_1_0().translate("wdl", allow_empty_container=True)

