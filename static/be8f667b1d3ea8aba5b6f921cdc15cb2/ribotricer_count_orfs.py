from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Boolean

Ribotricer_Count_Orfs_V0_1_0 = CommandToolBuilder(tool="ribotricer_count_orfs", base_command=["ribotricer", "count-orfs"], inputs=[ToolInput(tag="in_ribot_ricer_index", input_type=File(optional=True), prefix="--ribotricer_index", doc=InputDocumentation(doc="Path to the index file of ribotricer This file\nshould be generated using ribotricer prepare-orfs\n[required]")), ToolInput(tag="in_detected_orfs", input_type=File(optional=True), prefix="--detected_orfs", doc=InputDocumentation(doc="Path to the detected orfs file This file should be\ngenerated using ribotricer detect-orfs  [required]")), ToolInput(tag="in_features", input_type=String(optional=True), prefix="--features", doc=InputDocumentation(doc="ORF types separated with comma  [required]")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Path to output file  [required]")), ToolInput(tag="in_report_all", input_type=Boolean(optional=True), prefix="--report_all", doc=InputDocumentation(doc="Whether output all ORFs including those non-\ntranslating ones"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="Path to output file  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ribotricer_Count_Orfs_V0_1_0().translate("wdl", allow_empty_container=True)

