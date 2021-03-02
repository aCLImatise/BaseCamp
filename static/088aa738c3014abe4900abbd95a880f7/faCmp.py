from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Facmp_V0_1_0 = CommandToolBuilder(tool="faCmp", base_command=["faCmp"], inputs=[ToolInput(tag="in_soft_mask", input_type=Boolean(optional=True), prefix="-softMask", doc=InputDocumentation(doc="- use the soft masking information during the compare\nDifferences will be noted if the masking is different.")), ToolInput(tag="in_sort_name", input_type=Boolean(optional=True), prefix="-sortName", doc=InputDocumentation(doc="- sort input files by name before comparing")), ToolInput(tag="in_peptide", input_type=Boolean(optional=True), prefix="-peptide", doc=InputDocumentation(doc="- read as peptide sequences")), ToolInput(tag="in_a_dot_fa", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Facmp_V0_1_0().translate("wdl", allow_empty_container=True)

