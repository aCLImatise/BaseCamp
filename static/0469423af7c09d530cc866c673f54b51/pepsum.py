from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Pepsum_V0_1_0 = CommandToolBuilder(tool="pepsum", base_command=["pepsum"], inputs=[ToolInput(tag="in_pep_xml_filename", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/proteowizard:3.0.9992", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pepsum_V0_1_0().translate("wdl")

