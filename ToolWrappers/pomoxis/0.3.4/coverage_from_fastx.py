from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean

Coverage_From_Fastx_V0_1_0 = CommandToolBuilder(tool="coverage_from_fastx", base_command=["coverage_from_fastx"], inputs=[ToolInput(tag="in_coverage", input_type=String(optional=True), prefix="--coverage", doc=InputDocumentation(doc="Calculate fraction of reads required for this coverage.\n(default: None)")), ToolInput(tag="in_longest", input_type=Boolean(optional=True), prefix="--longest", doc=InputDocumentation(doc="Use the longest reads when calculating fraction reads\nrequired for a given coverage. (default: False)\n")), ToolInput(tag="in_base_calls", input_type=String(), position=0, doc=InputDocumentation(doc="input fastx file.")), ToolInput(tag="in_ref_len", input_type=String(), position=1, doc=InputDocumentation(doc="reference length (e.g. 4.8kb/mb/gb) or reference fastx\nfrom which to calculate length."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_From_Fastx_V0_1_0().translate("wdl", allow_empty_container=True)

