from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Uniqline_Pl_V0_1_0 = CommandToolBuilder(tool="uniqLine.pl", base_command=["uniqLine.pl"], inputs=[ToolInput(tag="in_give_column_number", input_type=Int(optional=True), prefix="--c", doc=InputDocumentation(doc=": give the column number that are used to check duplication. could be multiple. (e.g. Default: --c 1 --c 2 --c 3 for bed files and --c 1 --c 4 --c 5 for gtf files)")), ToolInput(tag="in_input_dot_bed", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dot_bed", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Uniqline_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

