from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Tb_Region_List_To_Bed_Output_File_V0_1_0 = CommandToolBuilder(tool="tb_region_list_to_bed_output_file", base_command=["tb_region_list_to_bed", "output_file"], inputs=[ToolInput(tag="in_chromosome_name", input_type=String(optional=True), prefix="--chromosome_name", doc=InputDocumentation(doc="")), ToolInput(tag="in_tb_region_list_to_bed", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tb_Region_List_To_Bed_Output_File_V0_1_0().translate("wdl", allow_empty_container=True)

