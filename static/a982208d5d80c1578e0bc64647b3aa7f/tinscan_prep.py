from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Directory

Tinscan_Prep_V0_1_0 = CommandToolBuilder(tool="tinscan_prep", base_command=["tinscan-prep"], inputs=[ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Multifasta containing A genome.")), ToolInput(tag="in_query", input_type=String(optional=True), prefix="--query", doc=InputDocumentation(doc="Multifasta containing B genome.")), ToolInput(tag="in_a_dir", input_type=Directory(optional=True), prefix="--adir", doc=InputDocumentation(doc="A genome sub-directory within outdir")), ToolInput(tag="in_b_dir", input_type=Directory(optional=True), prefix="--bdir", doc=InputDocumentation(doc="B genome sub-directory within outdir")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Write split directories within this directory.\n(Default: cwd)\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tinscan_Prep_V0_1_0().translate("wdl", allow_empty_container=True)

