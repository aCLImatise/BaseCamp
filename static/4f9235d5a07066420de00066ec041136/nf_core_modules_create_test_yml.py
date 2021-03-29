from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, File

Nf_Core_Modules_Create_Test_Yml_V0_1_0 = CommandToolBuilder(tool="nf_core_modules_create_test_yml", base_command=["nf-core", "modules", "create-test-yml"], inputs=[ToolInput(tag="in_tool", input_type=String(optional=True), prefix="--tool", doc=InputDocumentation(doc="or <tool/subtool>")), ToolInput(tag="in_run_tests", input_type=Boolean(optional=True), prefix="--run-tests", doc=InputDocumentation(doc="Run the test workflows")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="Path for output YAML file")), ToolInput(tag="in_force", input_type=File(optional=True), prefix="--force", doc=InputDocumentation(doc="Overwrite output YAML file if it already")), ToolInput(tag="in_files_dot", input_type=String(), position=0, doc=InputDocumentation(doc="Options:")), ToolInput(tag="in_exists", input_type=String(), position=1, doc=InputDocumentation(doc="-p, --no-prompts                Use defaults without prompting"))], outputs=[ToolOutput(tag="out_output", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output", type_hint=File()), doc=OutputDocumentation(doc="Path for output YAML file")), ToolOutput(tag="out_force", output_type=File(optional=True), selector=InputSelector(input_to_select="in_force", type_hint=File()), doc=OutputDocumentation(doc="Overwrite output YAML file if it already"))], container="quay.io/biocontainers/nf-core:1.13.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Nf_Core_Modules_Create_Test_Yml_V0_1_0().translate("wdl")

