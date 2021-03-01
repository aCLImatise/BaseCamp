from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Dx_App_Wizard_V0_1_0 = CommandToolBuilder(tool="dx_app_wizard", base_command=["dx-app-wizard"], inputs=[ToolInput(tag="in_json_file", input_type=File(optional=True), prefix="--json-file", doc=InputDocumentation(doc="Use the metadata and IO spec found in the given file")), ToolInput(tag="in_language", input_type=String(optional=True), prefix="--language", doc=InputDocumentation(doc="Programming language of your app")), ToolInput(tag="in_template", input_type=String(optional=True), prefix="--template", doc=InputDocumentation(doc="Execution pattern of your app\n")), ToolInput(tag="in_name", input_type=String(), position=0, doc=InputDocumentation(doc="Name of your app"))], outputs=[], container="quay.io/biocontainers/dxpy:0.306.0--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dx_App_Wizard_V0_1_0().translate("wdl")

