from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Pbsencode_V0_1_0 = CommandToolBuilder(tool="pbsEncode", base_command=["pbsEncode"], inputs=[ToolInput(tag="in_discard_gaps", input_type=Boolean(optional=True), prefix="--discard-gaps", doc=InputDocumentation(doc="Discard gaps in the PBS.  Gaps in the input data are assumed\nto be represented by rows consisting of a single '-' character.")), ToolInput(tag="in_pbs_train_dot", input_type=String(), position=0, doc=InputDocumentation(doc="pbsEncode anc.human-mouse.probs mammals.code > anc.human-mouse.bin"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Pbsencode_V0_1_0().translate("wdl", allow_empty_container=True)

