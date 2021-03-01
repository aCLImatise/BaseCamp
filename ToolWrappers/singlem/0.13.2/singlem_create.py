from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int

Singlem_Create_V0_1_0 = CommandToolBuilder(tool="singlem_create", base_command=["singlem", "create"], inputs=[ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="output debug information")), ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="only output errors")), ToolInput(tag="in_full_help", input_type=Boolean(optional=True), prefix="--full_help", doc=InputDocumentation(doc="display all help options")), ToolInput(tag="in_input_graft_m_package", input_type=File(optional=True), prefix="--input_graftm_package", doc=InputDocumentation(doc="input package")), ToolInput(tag="in_output_single_m_package", input_type=File(optional=True), prefix="--output_singlem_package", doc=InputDocumentation(doc="output package")), ToolInput(tag="in_hmm_position", input_type=Int(optional=True), prefix="--hmm_position", doc=InputDocumentation(doc="position in the GraftM alignment HMM where the SingleM\nwindow starts")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window_size", doc=InputDocumentation(doc="length of residues in the window, counting only those\nthat match the HMM")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="overwrite output path if it already exists"))], outputs=[ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="overwrite output path if it already exists"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlem_Create_V0_1_0().translate("wdl", allow_empty_container=True)

