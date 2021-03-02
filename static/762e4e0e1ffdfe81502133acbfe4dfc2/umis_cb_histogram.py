from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Umis_Cb_Histogram_V0_1_0 = CommandToolBuilder(tool="umis_cb_histogram", base_command=["umis", "cb_histogram"], inputs=[ToolInput(tag="in_umi_histogram", input_type=File(optional=True), prefix="--umi_histogram", doc=InputDocumentation(doc="Output a count of each UMI for each cellular barcode\nto this file.")), ToolInput(tag="in_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[ToolOutput(tag="out_umi_histogram", output_type=File(optional=True), selector=InputSelector(input_to_select="in_umi_histogram", type_hint=File()), doc=OutputDocumentation(doc="Output a count of each UMI for each cellular barcode\nto this file."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Umis_Cb_Histogram_V0_1_0().translate("wdl", allow_empty_container=True)

