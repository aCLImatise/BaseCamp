from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, File

Svm_Scale_V0_1_0 = CommandToolBuilder(tool="svm_scale", base_command=["svm-scale"], inputs=[ToolInput(tag="in_scaling_lower_limit_default", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc=": x scaling lower limit (default -1)")), ToolInput(tag="in_scaling_upper_limit_default", input_type=Int(optional=True), prefix="-u", doc=InputDocumentation(doc=": x scaling upper limit (default +1)")), ToolInput(tag="in_scaling_limits_default", input_type=String(optional=True), prefix="-y", doc=InputDocumentation(doc="y_upper : y scaling limits (default: no y scaling)")), ToolInput(tag="in_save_scaling_parameters", input_type=File(optional=True), prefix="-s", doc=InputDocumentation(doc=": save scaling parameters to save_filename")), ToolInput(tag="in_restore_scaling_parameters", input_type=File(optional=True), prefix="-r", doc=InputDocumentation(doc=": restore scaling parameters from restore_filename")), ToolInput(tag="in_data_filename", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Svm_Scale_V0_1_0().translate("wdl", allow_empty_container=True)

