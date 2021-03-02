from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Checktrans_V0_1_0 = CommandToolBuilder(tool="checktrans", base_command=["checktrans"], inputs=[ToolInput(tag="in_or_fml", input_type=Boolean(optional=True), prefix="-orfml", doc=InputDocumentation(doc="integer    [100] Minimum ORF Length to report (Integer\n1 or more)")), ToolInput(tag="in_stops_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Advanced (Unprompted) qualifiers: (none)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checktrans_V0_1_0().translate("wdl", allow_empty_container=True)

