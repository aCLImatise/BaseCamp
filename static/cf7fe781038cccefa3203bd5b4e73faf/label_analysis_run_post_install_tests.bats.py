from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Label_Analysis_Run_Post_Install_Tests_Bats_V0_1_0 = CommandToolBuilder(tool="label_analysis_run_post_install_tests.bats", base_command=["label_analysis_run_post_install_tests.bats"], inputs=[ToolInput(tag="in_count", input_type=Boolean(optional=True), prefix="--count", doc=InputDocumentation(doc="Count the number of test cases without running any tests")), ToolInput(tag="in_pretty", input_type=Boolean(optional=True), prefix="--pretty", doc=InputDocumentation(doc="Show results in pretty format (default for terminals)")), ToolInput(tag="in_tap", input_type=Boolean(optional=True), prefix="--tap", doc=InputDocumentation(doc="Show results in TAP format")), ToolInput(tag="in_bats", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Label_Analysis_Run_Post_Install_Tests_Bats_V0_1_0().translate("wdl", allow_empty_container=True)

