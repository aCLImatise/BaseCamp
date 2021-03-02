from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Traitar_Show_V0_1_0 = CommandToolBuilder(tool="traitar_show", base_command=["traitar", "show"], inputs=[ToolInput(tag="in_predictor", input_type=Boolean(optional=True), prefix="--predictor", doc=InputDocumentation(doc="{phypat,phypat+PGL}\npick phypat or phypat+PGL classifier")), ToolInput(tag="in_include_negative", input_type=String(optional=True), prefix="--include_negative", doc=InputDocumentation(doc="phenotype models archive; if set, look for the target\nin the phenotype in the given phenotype collection\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Traitar_Show_V0_1_0().translate("wdl", allow_empty_container=True)

