from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bxtools_Mol_V0_1_0 = CommandToolBuilder(tool="bxtools_mol", base_command=["bxtools", "mol"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Set verbose output")), ToolInput(tag="in_bam_slash_sam_slash_cram", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bxtools_Mol_V0_1_0().translate("wdl", allow_empty_container=True)

