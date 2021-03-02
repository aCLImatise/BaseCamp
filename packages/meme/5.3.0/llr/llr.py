from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Llr_V0_1_0 = CommandToolBuilder(tool="llr", base_command=["llr"], inputs=[ToolInput(tag="in_range", input_type=String(optional=True), prefix="-range", doc=InputDocumentation(doc="")), ToolInput(tag="in_frac", input_type=String(optional=True), prefix="-frac", doc=InputDocumentation(doc="")), ToolInput(tag="in_w", input_type=String(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_max_n", input_type=Int(optional=True), prefix="-maxN", doc=InputDocumentation(doc="")), ToolInput(tag="in_minn", input_type=String(optional=True), prefix="-minN", doc=InputDocumentation(doc="")), ToolInput(tag="in_n", input_type=String(optional=True), prefix="-N", doc=InputDocumentation(doc="")), ToolInput(tag="in_copyright", input_type=String(), position=0, doc=InputDocumentation(doc="(2000-2006) The Regents of the University of California"))], outputs=[], container="quay.io/biocontainers/meme:5.3.0--py38pl526hc1f1133_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Llr_V0_1_0().translate("wdl")

