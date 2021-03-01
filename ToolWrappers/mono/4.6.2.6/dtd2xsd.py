from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Dtd2Xsd_V0_1_0 = CommandToolBuilder(tool="dtd2xsd", base_command=["dtd2xsd"], inputs=[ToolInput(tag="in_instance_xml_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_xsd_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dtd2Xsd_V0_1_0().translate("wdl", allow_empty_container=True)

