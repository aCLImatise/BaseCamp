from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Scpred_Post_Install_Tests_Sh_V0_1_0 = CommandToolBuilder(tool="scpred_post_install_tests.sh", base_command=["scpred_post_install_tests.sh"], inputs=[ToolInput(tag="in_action", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_use_existing_outputs", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scpred_Post_Install_Tests_Sh_V0_1_0().translate("wdl", allow_empty_container=True)

