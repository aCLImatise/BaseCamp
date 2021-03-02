from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Hic2Cool_Extract_Norms_Outfile_V0_1_0 = CommandToolBuilder(tool="hic2cool_extract_norms_outfile", base_command=["hic2cool", "extract-norms", "outfile"], inputs=[ToolInput(tag="in_w", input_type=Boolean(optional=True), prefix="-w", doc=InputDocumentation(doc="")), ToolInput(tag="in_s", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="")), ToolInput(tag="in_e", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="")), ToolInput(tag="in_hic_two_cool", input_type=Int(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_extract_norms", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_file", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_outfile", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hic2Cool_Extract_Norms_Outfile_V0_1_0().translate("wdl", allow_empty_container=True)

