from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String, File

Gridss_V0_1_0 = CommandToolBuilder(tool="gridss", base_command=["gridss"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Verbose")), ToolInput(tag="in_posix_output_format", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc="POSIX output format")), ToolInput(tag="in_custom_format", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Custom format")), ToolInput(tag="in_write_result_file", input_type=File(optional=True), prefix="-o", doc=InputDocumentation(doc="Write result to FILE")), ToolInput(tag="in_append_else_overwrite", input_type=Boolean(optional=True), prefix="-a", doc=InputDocumentation(doc="Append (else overwrite)")), ToolInput(tag="in_vpa", input_type=Boolean(optional=True), prefix="-vpa", doc=InputDocumentation(doc="")), ToolInput(tag="in_time", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_prog", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_args", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/gridss:2.11.0--hdfd78af_1", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gridss_V0_1_0().translate("wdl")

