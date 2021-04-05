from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Womtool_V0_1_0 = CommandToolBuilder(tool="womtool", base_command=["womtool"], inputs=[ToolInput(tag="in_inputs", input_type=File(optional=True), prefix="--inputs", doc=InputDocumentation(doc="Workflow inputs file.")), ToolInput(tag="in_highlight_mode", input_type=String(optional=True), prefix="--highlight-mode", doc=InputDocumentation(doc="Highlighting mode, one of 'html', 'console' (used only with 'highlight' command)")), ToolInput(tag="in_optional_inputs", input_type=String(optional=True), prefix="--optional-inputs", doc=InputDocumentation(doc="If set, optional inputs are also included in the inputs set. Default is 'true' (used only with the inputs command)")), ToolInput(tag="in_list_dependencies", input_type=Boolean(optional=True), prefix="--list-dependencies", doc=InputDocumentation(doc="An optional flag to list files referenced in import statements (used only with 'validate' command)")), ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_workflow_source", input_type=String(), position=0, doc=InputDocumentation(doc="Path to workflow file."))], outputs=[], container="quay.io/biocontainers/womtool:58--hdfd78af_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Womtool_V0_1_0().translate("wdl")

