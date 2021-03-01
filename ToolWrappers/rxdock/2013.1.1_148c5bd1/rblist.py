from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Rblist_V0_1_0 = CommandToolBuilder(tool="rblist", base_command=["rblist"], inputs=[ToolInput(tag="in_input_ligand_sd", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="<InputSDFile> - input ligand SD file")), ToolInput(tag="in_outputsdfile_output_sd", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="<OutputSDFile> - output SD file with descriptors (default=no output)")), ToolInput(tag="in_ap", input_type=Boolean(optional=True), prefix="-ap", doc=InputDocumentation(doc="- protonate all neutral amines, guanidines, imidazoles (default=disabled)")), ToolInput(tag="in_an", input_type=Boolean(optional=True), prefix="-an", doc=InputDocumentation(doc="- deprotonate all carboxylic, sulphur and phosphorous acid groups (default=disabled)")), ToolInput(tag="in_all_h", input_type=Boolean(optional=True), prefix="-allH", doc=InputDocumentation(doc="- read all hydrogens present (default=polar hydrogens only)")), ToolInput(tag="in_tr", input_type=Boolean(optional=True), prefix="-tr", doc=InputDocumentation(doc="- rotate all 2ndry amides to trans (default=leave alone)")), ToolInput(tag="in_verbose_listing_ligand", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="- verbose listing of ligand atoms and rotable bonds (default = compact table format)")), ToolInput(tag="in_inputs_d_file", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_outputs_d_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_outputsdfile_output_sd", output_type=File(optional=True), selector=InputSelector(input_to_select="in_outputsdfile_output_sd", type_hint=File()), doc=OutputDocumentation(doc="<OutputSDFile> - output SD file with descriptors (default=no output)"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rblist_V0_1_0().translate("wdl", allow_empty_container=True)

