from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Hicup2Fithic_V0_1_0 = CommandToolBuilder(tool="hicup2fithic", base_command=["hicup2fithic"], inputs=[ToolInput(tag="in_digest", input_type=Boolean(optional=True), prefix="--digest", doc=InputDocumentation(doc="HiCUP Digester generated digest file")), ToolInput(tag="in_maximum", input_type=Boolean(optional=True), prefix="--maximum", doc=InputDocumentation(doc="The maximum allowed distance separation (bps) between contacts\n(selecting this option also removes trans contacts)")), ToolInput(tag="in_minimum", input_type=Boolean(optional=True), prefix="--minimum", doc=InputDocumentation(doc="The maximum allowed distance separation (bps) between contacts\n(selecting this option also removes trans contacts)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Hicup2Fithic_V0_1_0().translate("wdl", allow_empty_container=True)

