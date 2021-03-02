from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, Int

Splitchr_Py_Size_V0_1_0 = CommandToolBuilder(tool="splitchr.py_size", base_command=["splitchr.py", "size"], inputs=[ToolInput(tag="in_reformat", input_type=Boolean(optional=True), prefix="--reformat", doc=InputDocumentation(doc="")), ToolInput(tag="in_bed", input_type=String(optional=True), prefix="--bed", doc=InputDocumentation(doc="")), ToolInput(tag="in_split_chr_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_size", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Splitchr_Py_Size_V0_1_0().translate("wdl", allow_empty_container=True)

