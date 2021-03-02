from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Locarnap_Realign_All_Pl_V0_1_0 = CommandToolBuilder(tool="locarnap_realign_all.pl", base_command=["locarnap-realign-all.pl"], inputs=[ToolInput(tag="in_man", input_type=Boolean(optional=True), prefix="--man", doc=InputDocumentation(doc="Full documentation")), ToolInput(tag="in_test", input_type=Boolean(optional=True), prefix="--test", doc=InputDocumentation(doc="Test only. Jobs are not run or submitted to SGE!")), ToolInput(tag="in_rev_compl", input_type=Boolean(optional=True), prefix="--revcompl", doc=InputDocumentation(doc="Realign reverse complement")), ToolInput(tag="in_run_locally", input_type=Boolean(optional=True), prefix="--run-locally", doc=InputDocumentation(doc="Run the realignment on the local machine (without the use of SGE).")), ToolInput(tag="in_threads", input_type=String(optional=True), prefix="--threads", doc=InputDocumentation(doc="Use <k> threads for multicore support."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Locarnap_Realign_All_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

