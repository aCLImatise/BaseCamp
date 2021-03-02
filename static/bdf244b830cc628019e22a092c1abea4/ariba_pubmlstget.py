from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Ariba_Pubmlstget_V0_1_0 = CommandToolBuilder(tool="ariba_pubmlstget", base_command=["ariba", "pubmlstget"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Be verbose")), ToolInput(tag="in_species", input_type=String(), position=0, doc=InputDocumentation(doc="Species to download. Put it in quotes")), ToolInput(tag="in_outdir", input_type=String(), position=1, doc=InputDocumentation(doc="Name of output directory to be made (must not already exist)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ariba_Pubmlstget_V0_1_0().translate("wdl", allow_empty_container=True)

