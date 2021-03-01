from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Merge_Otu_Results_Py_V0_1_0 = CommandToolBuilder(tool="merge_otu_results.py", base_command=["merge_otu_results.py"], inputs=[ToolInput(tag="in_output_fn", input_type=File(optional=True), prefix="--output_fn", doc=InputDocumentation(doc="The name of the file the merged results will be\nwritten to.")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_pick_otus_results", input_type=String(), position=0, doc=InputDocumentation(doc="The result files from multiple runs of a pick otus\nscript that need to be merged."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merge_Otu_Results_Py_V0_1_0().translate("wdl", allow_empty_container=True)

