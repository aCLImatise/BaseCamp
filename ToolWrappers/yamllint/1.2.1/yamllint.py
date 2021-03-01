from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Yamllint_V0_1_0 = CommandToolBuilder(tool="yamllint", base_command=["yamllint"], inputs=[ToolInput(tag="in_config_file", input_type=File(optional=True), prefix="--config-file", doc=InputDocumentation(doc="path to a custom configuration")), ToolInput(tag="in_config_data", input_type=String(optional=True), prefix="--config-data", doc=InputDocumentation(doc="custom configuration (as YAML source)")), ToolInput(tag="in_format", input_type=String(optional=True), prefix="--format", doc=InputDocumentation(doc="format for parsing output")), ToolInput(tag="in_file_or_dir", input_type=String(), position=0, doc=InputDocumentation(doc="files to check"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Yamllint_V0_1_0().translate("wdl", allow_empty_container=True)

