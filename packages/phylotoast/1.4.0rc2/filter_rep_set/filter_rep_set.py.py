from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Filter_Rep_Set_Py_V0_1_0 = CommandToolBuilder(tool="filter_rep_set.py", base_command=["filter_rep_set.py"], inputs=[ToolInput(tag="in_rep_set_fn", input_type=String(optional=True), prefix="--rep_set_fn", doc=InputDocumentation(doc="The set of representative sequences.")), ToolInput(tag="in_unique_otus_fn", input_type=File(optional=True), prefix="--unique_otus_fn", doc=InputDocumentation(doc="The condensed assigned taxonomy file.")), ToolInput(tag="in_output_filtered_rep_set_fn", input_type=String(optional=True), prefix="--output_filtered_rep_set_fn", doc=InputDocumentation(doc="The filtered representative set. By default outputs to\ncondensed_rep_set.fna"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Rep_Set_Py_V0_1_0().translate("wdl", allow_empty_container=True)

