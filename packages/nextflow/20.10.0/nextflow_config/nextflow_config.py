from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Nextflow_Config_V0_1_0 = CommandToolBuilder(tool="nextflow_config", base_command=["nextflow", "config"], inputs=[ToolInput(tag="in_flat", input_type=Boolean(optional=True), prefix="-flat", doc=InputDocumentation(doc="Print config using flat notation\nDefault: false")), ToolInput(tag="in_profile", input_type=Boolean(optional=True), prefix="-profile", doc=InputDocumentation(doc="Choose a configuration profile")), ToolInput(tag="in_properties", input_type=Boolean(optional=True), prefix="-properties", doc=InputDocumentation(doc="Prints config using Java properties notation\nDefault: false")), ToolInput(tag="in_show_profiles", input_type=Boolean(optional=True), prefix="-show-profiles", doc=InputDocumentation(doc="Show all configuration profiles\nDefault: false")), ToolInput(tag="in_sort", input_type=Boolean(optional=True), prefix="-sort", doc=InputDocumentation(doc="Sort config attributes\nDefault: false\n")), ToolInput(tag="in_config", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_project", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_name", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/nextflow:20.10.0--hecda079_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nextflow_Config_V0_1_0().translate("wdl")

