from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fconsense_V0_1_0 = CommandToolBuilder(tool="fconsense", base_command=["fconsense"], inputs=[ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [mre] Consensus method (Values: s (strict\nconsensus tree); mr (Majority Rule); mre\n(Majority Rule (extended)); ml (Minimum\nfraction (0.5 to 1.0)))")), ToolInput(tag="in_root", input_type=Boolean(optional=True), prefix="-root", doc=InputDocumentation(doc="toggle     [N] Trees to be treated as Rooted")), ToolInput(tag="in_out_gr_no", input_type=Boolean(optional=True), prefix="-outgrno", doc=InputDocumentation(doc="integer    [0] Species number to use as outgroup\n(Integer 0 or more)")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers (* if not always prompted):"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fconsense_V0_1_0().translate("wdl", allow_empty_container=True)

