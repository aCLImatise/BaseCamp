from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Extract_Variants_V0_1_0 = CommandToolBuilder(tool="extract_variants", base_command=["extract_variants"], inputs=[ToolInput(tag="in_skip_header", input_type=Boolean(optional=True), prefix="--skip-header", doc=InputDocumentation(doc="Write gVCF output without header")), ToolInput(tag="in_invert", input_type=Boolean(optional=True), prefix="--invert", doc=InputDocumentation(doc="Invert the filter so that only non-variant records are")), ToolInput(tag="in_output_dot", input_type=String(), position=0, doc=InputDocumentation(doc="help:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Extract_Variants_V0_1_0().translate("wdl", allow_empty_container=True)

