from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Filter_Keep_Otus_By_Sample_Py_V0_1_0 = CommandToolBuilder(tool="filter_keep_otus_by_sample.py", base_command=["filter_keep_otus_by_sample.py"], inputs=[ToolInput(tag="in_otu_map", input_type=File(optional=True), prefix="--otu_map", doc=InputDocumentation(doc="path to the input OTU map (i.e., the output from\npick_otus.py) [REQUIRED]")), ToolInput(tag="in_samples_to_keep_fp", input_type=File(optional=True), prefix="--samples_to_keep_fp", doc=InputDocumentation(doc="path to the file containing Sample IDs to keep in the\nnew OTU map. One Sample ID per line.")), ToolInput(tag="in_output_otu_map_fp", input_type=File(optional=True), prefix="--output_otu_map_fp", doc=InputDocumentation(doc="path to the output filtered OTU map"))], outputs=[ToolOutput(tag="out_output_otu_map_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_otu_map_fp", type_hint=File()), doc=OutputDocumentation(doc="path to the output filtered OTU map"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Keep_Otus_By_Sample_Py_V0_1_0().translate("wdl", allow_empty_container=True)

