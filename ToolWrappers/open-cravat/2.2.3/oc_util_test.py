from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, Array, String

Oc_Util_Test_V0_1_0 = CommandToolBuilder(tool="oc_util_test", base_command=["oc", "util", "test"], inputs=[ToolInput(tag="in_run_dir", input_type=Directory(optional=True), prefix="--rundir", doc=InputDocumentation(doc="Directory for output")), ToolInput(tag="in_modules", input_type=Array(t=String(), optional=True), prefix="--modules", doc=InputDocumentation(doc="Name of module(s) to test. (e.g. gnomad)")), ToolInput(tag="in_mod_types", input_type=Array(t=String(), optional=True), prefix="--mod_types", doc=InputDocumentation(doc="Type of module(s) to test (e.g. annotators)\n"))], outputs=[ToolOutput(tag="out_run_dir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_run_dir", type_hint=File()), doc=OutputDocumentation(doc="Directory for output"))], container="quay.io/biocontainers/open-cravat:2.2.3--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Oc_Util_Test_V0_1_0().translate("wdl")

