from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Sonicparanoid_Set_Mmseqs2_V0_1_0 = CommandToolBuilder(tool="sonicparanoid_set_mmseqs2", base_command=["sonicparanoid-set-mmseqs2"], inputs=[ToolInput(tag="in_mm_seqs_path", input_type=File(optional=True), prefix="--mmseqs-path", doc=InputDocumentation(doc="The path to the MMseqs2 binary file.")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Output debug information.")), ToolInput(tag="in_o", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sonicparanoid_Set_Mmseqs2_V0_1_0().translate("wdl", allow_empty_container=True)

