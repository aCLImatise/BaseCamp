from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Compare_V0_1_0 = CommandToolBuilder(tool="compare", base_command=["compare"], inputs=[ToolInput(tag="in_an_not", input_type=File(optional=True), prefix="-annot", doc=InputDocumentation(doc="")), ToolInput(tag="in_caps", input_type=Boolean(optional=True), prefix="-caps", doc=InputDocumentation(doc="")), ToolInput(tag="in_core", input_type=Boolean(optional=True), prefix="-core", doc=InputDocumentation(doc="")), ToolInput(tag="in_col", input_type=Boolean(optional=True), prefix="-col", doc=InputDocumentation(doc="")), ToolInput(tag="in_score", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_test_alignment", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_reference_alignment", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_bali_base_an_not_file", input_type=String(optional=True), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Compare_V0_1_0().translate("wdl", allow_empty_container=True)

