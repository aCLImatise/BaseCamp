from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Haltreeniturnover_Py_V0_1_0 = CommandToolBuilder(tool="halTreeNITurnover.py", base_command=["halTreeNITurnover.py"], inputs=[ToolInput(tag="in_conserved_bed_name", input_type=String(optional=True), prefix="--conservedBedName", doc=InputDocumentation(doc="Name function for output bed files where genome name\nis specifed as %s (default: %%s_cons.bed)")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="root (default: None)")), ToolInput(tag="in_hal", input_type=String(), position=0, doc=InputDocumentation(doc="input hal")), ToolInput(tag="in_workdir", input_type=String(), position=1, doc=InputDocumentation(doc="working dir for all bed files"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haltreeniturnover_Py_V0_1_0().translate("wdl", allow_empty_container=True)

