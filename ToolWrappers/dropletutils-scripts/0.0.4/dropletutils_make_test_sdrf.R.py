from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Dropletutils_Make_Test_Sdrf_R_V0_1_0 = CommandToolBuilder(tool="dropletutils_make_test_sdrf.R", base_command=["dropletutils-make-test-sdrf.R"], inputs=[ToolInput(tag="in_barcodes", input_type=File(optional=True), prefix="--barcodes", doc=InputDocumentation(doc="path to the cell barcodes file in .tsv format")), ToolInput(tag="in_output_file", input_type=File(optional=True), prefix="--output-file", doc=InputDocumentation(doc="path to the tab-deilmited output file"))], outputs=[ToolOutput(tag="out_output_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_file", type_hint=File()), doc=OutputDocumentation(doc="path to the tab-deilmited output file"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Dropletutils_Make_Test_Sdrf_R_V0_1_0().translate("wdl", allow_empty_container=True)

