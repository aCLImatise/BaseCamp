from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Xsd_V0_1_0 = CommandToolBuilder(tool="xsd", base_command=["xsd"], inputs=[ToolInput(tag="in_help", input_type=String(), position=0, doc=InputDocumentation(doc="Print usage information and exit. Use\n'help <cmd>' for command-specific options.")), ToolInput(tag="in_version", input_type=String(), position=1, doc=InputDocumentation(doc="Print version and exit.")), ToolInput(tag="in_cxx_tree", input_type=String(), position=2, doc=InputDocumentation(doc="Generate the C++/Tree mapping.")), ToolInput(tag="in_cxx_parser", input_type=String(), position=3, doc=InputDocumentation(doc="Generate the C++/Parser mapping."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Xsd_V0_1_0().translate("wdl", allow_empty_container=True)

