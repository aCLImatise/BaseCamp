from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Count2Huge_Pl_V0_1_0 = CommandToolBuilder(tool="count2huge.pl", base_command=["count2huge.pl"], inputs=[ToolInput(tag="in_split", input_type=Int(optional=True), prefix="--split", doc=InputDocumentation(doc="Split the bigrams list into smaller pieces. Each file has\nN bigrams. N is an integer (N>=1).")), ToolInput(tag="in_source", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_destination_dir", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Count2Huge_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

