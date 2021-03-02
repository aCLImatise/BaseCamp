from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Advntr_Delmodel_Viewmodel_V0_1_0 = CommandToolBuilder(tool="advntr_delmodel_viewmodel", base_command=["advntr", "delmodel", "viewmodel"], inputs=[ToolInput(tag="in_vntr_id", input_type=String(optional=True), prefix="--vntr_id", doc=InputDocumentation(doc="VNTR ID")), ToolInput(tag="in_models", input_type=File(optional=True), prefix="--models", doc=InputDocumentation(doc="VNTR models file [vntr_data/hg19_selected_VNTRs_Illumina.db]")), ToolInput(tag="in_ad_vntr", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_del_model", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Advntr_Delmodel_Viewmodel_V0_1_0().translate("wdl", allow_empty_container=True)

