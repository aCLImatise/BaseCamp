from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Add_Gff_Info_Coverage_V0_1_0 = CommandToolBuilder(tool="add_gff_info_coverage", base_command=["add-gff-info", "coverage"], inputs=[ToolInput(tag="in_sample_alignment", input_type=File(optional=True), prefix="--sample-alignment", doc=InputDocumentation(doc="sample name and correspondent alignment file\nseparated by comma  [required]")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Add_Gff_Info_Coverage_V0_1_0().translate("wdl", allow_empty_container=True)

