from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Build_Icm_V0_1_0 = CommandToolBuilder(tool="build_icm", base_command=["build-icm"], inputs=[ToolInput(tag="in_set_depth_model", input_type=Int(optional=True), prefix="-d", doc=InputDocumentation(doc="Set depth of model to <num>")), ToolInput(tag="in_ignore_input_strings", input_type=Boolean(optional=True), prefix="-F", doc=InputDocumentation(doc="Ignore input strings with in-frame stop codons")), ToolInput(tag="in_set_period_model", input_type=Int(optional=True), prefix="-p", doc=InputDocumentation(doc="Set period of model to <num>")), ToolInput(tag="in_use_reverse_build", input_type=Boolean(optional=True), prefix="-r", doc=InputDocumentation(doc="Use the reverse of input strings to build the model")), ToolInput(tag="in_output_model_text", input_type=Boolean(optional=True), prefix="-t", doc=InputDocumentation(doc="Output model as text (for debugging only)")), ToolInput(tag="in_set_verbose_level", input_type=Int(optional=True), prefix="-v", doc=InputDocumentation(doc="Set verbose level; higher is more diagnostic printouts")), ToolInput(tag="in_set_length_model", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Set length of model window to <num>\n")), ToolInput(tag="in_output_file", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Build_Icm_V0_1_0().translate("wdl", allow_empty_container=True)

