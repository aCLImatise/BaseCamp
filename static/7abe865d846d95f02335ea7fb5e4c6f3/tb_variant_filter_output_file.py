from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tb_Variant_Filter_Output_File_V0_1_0 = CommandToolBuilder(tool="tb_variant_filter_output_file", base_command=["tb_variant_filter", "output_file"], inputs=[ToolInput(tag="in_region_filter", input_type=String(optional=True), prefix="--region_filter", doc=InputDocumentation(doc="")), ToolInput(tag="in_tb_variant_filter", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Variant_Filter_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

