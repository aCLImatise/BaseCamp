from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, File

Collect_Mgf_V0_1_0 = CommandToolBuilder(tool="collect_mgf", base_command=["collect_mgf"], inputs=[ToolInput(tag="in_exp_no_directory", input_type=Directory(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_dd_results_file", input_type=File(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Collect_Mgf_V0_1_0().translate("wdl", allow_empty_container=True)

