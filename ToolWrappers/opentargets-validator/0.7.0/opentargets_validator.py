from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int

Opentargets_Validator_V0_1_0 = CommandToolBuilder(tool="opentargets_validator", base_command=["opentargets_validator"], inputs=[ToolInput(tag="in_schema", input_type=File(optional=True), prefix="--schema", doc=InputDocumentation(doc="set the schema file to use")), ToolInput(tag="in_log_level", input_type=String(optional=True), prefix="--log-level", doc=InputDocumentation(doc="set the log level def: WARNING")), ToolInput(tag="in_log_lines", input_type=Int(optional=True), prefix="--log-lines", doc=InputDocumentation(doc="number of log errors to print out [no longer\nsupported]\n")), ToolInput(tag="in_data_source_file", input_type=String(), position=0, doc=InputDocumentation(doc="The prefix to prepend default: STDIN"))], outputs=[], container="quay.io/biocontainers/opentargets-validator:0.7.0--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Opentargets_Validator_V0_1_0().translate("wdl")

