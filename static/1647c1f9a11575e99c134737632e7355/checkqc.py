from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Checkqc_V0_1_0 = CommandToolBuilder(tool="checkqc", base_command=["checkqc"], inputs=[ToolInput(tag="in_config", input_type=File(optional=True), prefix="--config", doc=InputDocumentation(doc="Path to the checkQC configuration file")), ToolInput(tag="in_json", input_type=Boolean(optional=True), prefix="--json", doc=InputDocumentation(doc="Print the results of the run as json to stdout")), ToolInput(tag="in_downgrade_errors", input_type=String(optional=True), prefix="--downgrade-errors", doc=InputDocumentation(doc="Downgrade errors to warnings for a specific\nhandler, can be used multiple times")), ToolInput(tag="in_use_closest_read_length", input_type=Boolean(optional=True), prefix="--use-closest-read-length", doc=InputDocumentation(doc="Use the closest read length if the read length\nused isn't specified in the config")), ToolInput(tag="in_file_dot", input_type=File(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Checkqc_V0_1_0().translate("wdl", allow_empty_container=True)

