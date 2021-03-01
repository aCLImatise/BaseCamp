from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Json2Gff_Mongodb_V0_1_0 = CommandToolBuilder(tool="json2gff_mongodb", base_command=["json2gff", "mongodb"], inputs=[ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gff_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Json2Gff_Mongodb_V0_1_0().translate("wdl", allow_empty_container=True)

