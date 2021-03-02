from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int

Haltreemutations_Py_V0_1_0 = CommandToolBuilder(tool="halTreeMutations.py", base_command=["halTreeMutations.py"], inputs=[ToolInput(tag="in_bed_name", input_type=String(optional=True), prefix="--bedName", doc=InputDocumentation(doc="Name function for output bed files where sequence name\nis specifed as %s (default: %%s.bed)")), ToolInput(tag="in_root", input_type=String(optional=True), prefix="--root", doc=InputDocumentation(doc="root (default: None)")), ToolInput(tag="in_do_parent_deletions", input_type=Int(optional=True), prefix="--doParentDeletions", doc=InputDocumentation(doc="gap threshold (default: 10)")), ToolInput(tag="in_hal", input_type=String(), position=0, doc=InputDocumentation(doc="input hal")), ToolInput(tag="in_outdir", input_type=String(), position=1, doc=InputDocumentation(doc="output dir"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Haltreemutations_Py_V0_1_0().translate("wdl", allow_empty_container=True)

