from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Cramtools_Index_V0_1_0 = CommandToolBuilder(tool="cramtools_index", base_command=["cramtools", "index"], inputs=[ToolInput(tag="in_index_file", input_type=Boolean(optional=True), prefix="--index-file", doc=InputDocumentation(doc="Write index to this file.")), ToolInput(tag="in_index_format", input_type=Boolean(optional=True), prefix="--index-format", doc=InputDocumentation(doc="Choose between BAM index (bai) and CRAM index (crai).  (default: CRAI)")), ToolInput(tag="in_input_file", input_type=Boolean(optional=True), prefix="--input-file", doc=InputDocumentation(doc="Path to a BAM or CRAM file to be indexed. Omit if standard input (pipe).")), ToolInput(tag="in_log_level", input_type=Boolean(optional=True), prefix="--log-level", doc=InputDocumentation(doc="Change log level: DEBUG, INFO, WARNING, ERROR. (default: ERROR)")), ToolInput(tag="in_main_class", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Cramtools_Index_V0_1_0().translate("wdl", allow_empty_container=True)

