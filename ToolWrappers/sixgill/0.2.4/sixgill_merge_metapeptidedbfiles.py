from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Sixgill_Merge_Metapeptidedbfiles_V0_1_0 = CommandToolBuilder(tool="sixgill_merge_metapeptidedbfiles", base_command=["sixgill_merge", "metapeptidedbfiles"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="")), ToolInput(tag="in_no_gzip_out", input_type=Boolean(optional=True), prefix="--nogzipout", doc=InputDocumentation(doc="")), ToolInput(tag="in_out", input_type=String(optional=True), prefix="--out", doc=InputDocumentation(doc="")), ToolInput(tag="in_six_gill_merge", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sixgill_Merge_Metapeptidedbfiles_V0_1_0().translate("wdl", allow_empty_container=True)

