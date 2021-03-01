from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Fgendist_V0_1_0 = CommandToolBuilder(tool="fgendist", base_command=["fgendist"], inputs=[ToolInput(tag="in_method", input_type=Boolean(optional=True), prefix="-method", doc=InputDocumentation(doc="menu       [n] Which method to use (Values: n (Nei\ngenetic distance); c (Cavalli-Sforza chord\nmeasure); r (Reynolds genetic distance))")), ToolInput(tag="in_lower", input_type=Boolean(optional=True), prefix="-lower", doc=InputDocumentation(doc="boolean    [N] Lower triangular distance matrix")), ToolInput(tag="in_file", input_type=File(), position=0, doc=InputDocumentation(doc="Additional (Optional) qualifiers:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fgendist_V0_1_0().translate("wdl", allow_empty_container=True)

