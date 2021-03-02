from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String, Float, Int

Gerpcol_V0_1_0 = CommandToolBuilder(tool="gerpcol", base_command=["gerpcol"], inputs=[ToolInput(tag="in_verbose_mode", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="verbose mode")), ToolInput(tag="in_evolutionary_tree", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="evolutionary tree")), ToolInput(tag="in_alignment_filename", input_type=File(optional=True), prefix="-f", doc=InputDocumentation(doc="alignment filename")), ToolInput(tag="in_alignment_mfa_format", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="alignment in mfa format [default = false]")), ToolInput(tag="in_name_reference_sequence", input_type=String(optional=True), prefix="-e", doc=InputDocumentation(doc="name of reference sequence")), ToolInput(tag="in_project_reference_sequence", input_type=Boolean(optional=True), prefix="-j", doc=InputDocumentation(doc="project out reference sequence")), ToolInput(tag="in_trtv_ratio", input_type=Float(optional=True), prefix="-r", doc=InputDocumentation(doc="Tr/Tv ratio [default = 2.0]")), ToolInput(tag="in_tolerance_rate_estimation", input_type=Float(optional=True), prefix="-p", doc=InputDocumentation(doc="tolerance for rate estimation [default = 0.001]")), ToolInput(tag="in_start_at_position", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc="start at position 0 [default = false]")), ToolInput(tag="in_tree_neutral_rate", input_type=String(optional=True), prefix="-n", doc=InputDocumentation(doc="tree neutral rate [default = compute from tree]")), ToolInput(tag="in_tree_scaling_factor", input_type=Float(optional=True), prefix="-s", doc=InputDocumentation(doc="tree scaling factor [default = 1.0]")), ToolInput(tag="in_suffix_naming_files", input_type=String(optional=True), prefix="-x", doc=InputDocumentation(doc="suffix for naming output files [default = '.rates']"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gerpcol_V0_1_0().translate("wdl", allow_empty_container=True)

