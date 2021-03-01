from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Tomtom_Xml_To_Html_V0_1_0 = CommandToolBuilder(tool="tomtom_xml_to_html", base_command=["tomtom_xml_to_html"], inputs=[ToolInput(tag="in_tomtom_xml_file", input_type=File(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tomtom_Xml_To_Html_V0_1_0().translate("wdl", allow_empty_container=True)

