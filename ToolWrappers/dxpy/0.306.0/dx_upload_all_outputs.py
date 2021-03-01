from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Dx_Upload_All_Outputs_V0_1_0 = CommandToolBuilder(tool="dx_upload_all_outputs", base_command=["dx-upload-all-outputs"], inputs=[ToolInput(tag="in_except", input_type=String(optional=True), prefix="--except", doc=InputDocumentation(doc="Do not upload the input with this name. (May be used\nmultiple times.)")), ToolInput(tag="in_parallel", input_type=Boolean(optional=True), prefix="--parallel", doc=InputDocumentation(doc="Upload the files in parallel")), ToolInput(tag="in_sequential", input_type=Boolean(optional=True), prefix="--sequential", doc=InputDocumentation(doc="Upload the files sequentially")), ToolInput(tag="in_clear_json", input_type=File(optional=True), prefix="--clearJSON", doc=InputDocumentation(doc="Clears the output JSON file prior to starting upload.")), ToolInput(tag="in_wait_on_close", input_type=Boolean(optional=True), prefix="--wait-on-close", doc=InputDocumentation(doc="Wait for files to close, default is not to wait")), ToolInput(tag="in_xattr_properties", input_type=Boolean(optional=True), prefix="--xattr-properties", doc=InputDocumentation(doc="Get filesystem attributes and set them as properties on each file uploaded"))], outputs=[ToolOutput(tag="out_clear_json", output_type=File(optional=True), selector=InputSelector(input_to_select="in_clear_json", type_hint=File()), doc=OutputDocumentation(doc="Clears the output JSON file prior to starting upload."))], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_Upload_All_Outputs_V0_1_0().translate("wdl")

