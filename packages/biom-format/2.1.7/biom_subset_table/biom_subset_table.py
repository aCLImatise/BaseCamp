from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Biom_Subset_Table_V0_1_0 = CommandToolBuilder(tool="biom_subset_table", base_command=["biom", "subset-table"], inputs=[ToolInput(tag="in_input_hdf_five_fp", input_type=File(optional=True), prefix="--input-hdf5-fp", doc=InputDocumentation(doc="the input hdf5 BIOM table filepath to subset")), ToolInput(tag="in_input_json_fp", input_type=File(optional=True), prefix="--input-json-fp", doc=InputDocumentation(doc="the input json BIOM table filepath to subset")), ToolInput(tag="in_axis", input_type=Boolean(optional=True), prefix="--axis", doc=InputDocumentation(doc="[sample|observation]\nthe axis to subset over, either sample or\nobservation  [required]")), ToolInput(tag="in_ids", input_type=File(optional=True), prefix="--ids", doc=InputDocumentation(doc="a file containing a single column of IDs to\nretain (either sample IDs or observation\nIDs, depending on the axis)  [required]")), ToolInput(tag="in_output_fp", input_type=File(optional=True), prefix="--output-fp", doc=InputDocumentation(doc="the output BIOM table filepath  [required]"))], outputs=[ToolOutput(tag="out_output_fp", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_fp", type_hint=File()), doc=OutputDocumentation(doc="the output BIOM table filepath  [required]"))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Biom_Subset_Table_V0_1_0().translate("wdl", allow_empty_container=True)

