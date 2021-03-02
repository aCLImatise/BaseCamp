from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Pslmrnacover_V0_1_0 = CommandToolBuilder(tool="pslMrnaCover", base_command=["pslMrnaCover"], inputs=[ToolInput(tag="in_minsize", input_type=Int(optional=True), prefix="-minSize", doc=InputDocumentation(doc="- default 100.  Minimum size of mRNA considered")), ToolInput(tag="in_list_zero", input_type=String(optional=True), prefix="-listZero", doc=InputDocumentation(doc="- List accessions that don't align in zero.tab")), ToolInput(tag="in_mrna_dot_psl", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pslmrnacover_V0_1_0().translate("wdl", allow_empty_container=True)

