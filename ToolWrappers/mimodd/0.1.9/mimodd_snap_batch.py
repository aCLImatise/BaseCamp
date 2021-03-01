from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Mimodd_Snap_Batch_V0_1_0 = CommandToolBuilder(tool="mimodd_snap_batch", base_command=["mimodd", "snap-batch"], inputs=[ToolInput(tag="in_one_more_completely", input_type=Boolean(optional=True), prefix="-s", doc=InputDocumentation(doc="'COMMAND' ['COMMAND' ...]\none or more completely specified command line calls to\nthe snap tool (use '' to enclose individual lines)")), ToolInput(tag="in_input_file_completely", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="an input file of completely specified command line\ncalls to the snap tool\n")), ToolInput(tag="in_snap_batch", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mimodd_Snap_Batch_V0_1_0().translate("wdl", allow_empty_container=True)

