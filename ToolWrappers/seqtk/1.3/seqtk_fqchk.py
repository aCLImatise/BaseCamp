from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Seqtk_Fqchk_V0_1_0 = CommandToolBuilder(tool="seqtk_fqchk", base_command=["seqtk", "fqchk"], inputs=[ToolInput(tag="in_q", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dot_fq", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Seqtk_Fqchk_V0_1_0().translate("wdl", allow_empty_container=True)

