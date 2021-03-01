from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Scmap_Make_Test_Data_R_V0_1_0 = CommandToolBuilder(tool="scmap_make_test_data.R", base_command=["scmap-make-test-data.R"], inputs=[ToolInput(tag="in_output_object_file", input_type=File(optional=True), prefix="--output-object-file", doc=InputDocumentation(doc="file name in which to store serialized R object of type 'SingleCellExperiment'."))], outputs=[ToolOutput(tag="out_output_object_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_object_file", type_hint=File()), doc=OutputDocumentation(doc="file name in which to store serialized R object of type 'SingleCellExperiment'."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Scmap_Make_Test_Data_R_V0_1_0().translate("wdl", allow_empty_container=True)

