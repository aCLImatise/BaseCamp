from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Label_Analysis_Run_Post_Install_Tests_Sh_V0_1_0 = CommandToolBuilder(tool="label_analysis_run_post_install_tests.sh", base_command=["label_analysis_run_post_install_tests.sh"], inputs=[ToolInput(tag="in_run_post_install_tests_dots_h", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_action", input_type=String(optional=True), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_use_existing_outputs", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/cell-types-analysis:0.1.11--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Label_Analysis_Run_Post_Install_Tests_Sh_V0_1_0().translate("wdl")

