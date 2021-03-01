from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Deblur_Build_Db_Index_5_Critical_V0_1_0 = CommandToolBuilder(tool="deblur_build_db_index_5_critical", base_command=["deblur", "build-db-index", "5-critical"], inputs=[ToolInput(tag="in_de_blur", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_build_db_index", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_fp", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Deblur_Build_Db_Index_5_Critical_V0_1_0().translate("wdl", allow_empty_container=True)

