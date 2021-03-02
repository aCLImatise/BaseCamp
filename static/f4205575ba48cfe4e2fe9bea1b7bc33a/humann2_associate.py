from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Float

Humann2_Associate_V0_1_0 = CommandToolBuilder(tool="humann2_associate", base_command=["humann2_associate"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="HUMAnN2 table with metadata rows at the top")), ToolInput(tag="in_focal_meta_datum", input_type=String(optional=True), prefix="--focal-metadatum", doc=InputDocumentation(doc="Indicate metadatum to test vs. community feature totals")), ToolInput(tag="in_last_meta_datum", input_type=String(optional=True), prefix="--last-metadatum", doc=InputDocumentation(doc="Indicate end of metadata rows")), ToolInput(tag="in_focal_type", input_type=String(optional=True), prefix="--focal-type", doc=InputDocumentation(doc="Metadatum type")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Where to save the output")), ToolInput(tag="in_fdr", input_type=Float(optional=True), prefix="--fdr", doc=InputDocumentation(doc="FDR threshold (default=0.2)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Humann2_Associate_V0_1_0().translate("wdl", allow_empty_container=True)

