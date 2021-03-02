from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Arb_Help2Xml_V0_1_0 = CommandToolBuilder(tool="arb_help2xml", base_command=["arb_help2xml"], inputs=[ToolInput(tag="in_arb_help_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_xml_output", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Arb_Help2Xml_V0_1_0().translate("wdl", allow_empty_container=True)

