from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File

Gatc_Track_Maker_Pl_V0_1_0 = CommandToolBuilder(tool="gatc.track.maker.pl", base_command=["gatc.track.maker.pl"], inputs=[ToolInput(tag="in_mi_to", input_type=Boolean(optional=True), prefix="--mito", doc=InputDocumentation(doc="Process mitochondrial chromosome (not recommended)")), ToolInput(tag="in_name", input_type=File(optional=True), prefix="--name", doc=InputDocumentation(doc="Name of organism (for output file)")), ToolInput(tag="in_scaffolds", input_type=Boolean(optional=True), prefix="--scaffolds", doc=InputDocumentation(doc="Process scaffold assemblies (not recommended)"))], outputs=[ToolOutput(tag="out_name", output_type=File(optional=True), selector=InputSelector(input_to_select="in_name", type_hint=File()), doc=OutputDocumentation(doc="Name of organism (for output file)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gatc_Track_Maker_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

