from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String, Boolean, Int

Ragout_V0_1_0 = CommandToolBuilder(tool="ragout", base_command=["ragout"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="output directory (default: ragout-out)")), ToolInput(tag="in_synteny", input_type=String(optional=True), prefix="--synteny", doc=InputDocumentation(doc="backend for synteny block decomposition (default:\nsibelia)")), ToolInput(tag="in_refine", input_type=Boolean(optional=True), prefix="--refine", doc=InputDocumentation(doc="enable refinement with assembly graph (default: False)")), ToolInput(tag="in_solid_scaffolds", input_type=Boolean(optional=True), prefix="--solid-scaffolds", doc=InputDocumentation(doc="do not break input sequences - disables chimera\ndetection module (default: False)")), ToolInput(tag="in_overwrite", input_type=Boolean(optional=True), prefix="--overwrite", doc=InputDocumentation(doc="overwrite results from the previous run (default:\nFalse)")), ToolInput(tag="in_repeats", input_type=Boolean(optional=True), prefix="--repeats", doc=InputDocumentation(doc="enable repeat resolution algorithm (default: False)")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="enable debug output (default: False)")), ToolInput(tag="in_threads", input_type=Int(optional=True), prefix="--threads", doc=InputDocumentation(doc="number of threads for synteny backend (default: 1)"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="output directory (default: ragout-out)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ragout_V0_1_0().translate("wdl", allow_empty_container=True)

