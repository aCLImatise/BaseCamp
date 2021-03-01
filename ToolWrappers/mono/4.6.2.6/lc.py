from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Lc_V0_1_0 = CommandToolBuilder(tool="lc", base_command=["lc"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Verbose output")), ToolInput(tag="in_target", input_type=String(optional=True), prefix="--target", doc=InputDocumentation(doc="Target assembly name")), ToolInput(tag="in_comp_list", input_type=File(optional=True), prefix="--complist", doc=InputDocumentation(doc="licx file to compile")), ToolInput(tag="in_load", input_type=String(optional=True), prefix="--load", doc=InputDocumentation(doc="Reference to load")), ToolInput(tag="in_outdir", input_type=File(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory for the .licenses file")), ToolInput(tag="in_nologo", input_type=Boolean(optional=True), prefix="--nologo", doc=InputDocumentation(doc="Do not display logo"))], outputs=[ToolOutput(tag="out_outdir", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory for the .licenses file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Lc_V0_1_0().translate("wdl", allow_empty_container=True)

