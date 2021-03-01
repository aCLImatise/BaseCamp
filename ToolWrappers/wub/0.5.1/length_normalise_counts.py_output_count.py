from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Length_Normalise_Counts_Py_Output_Count_V0_1_0 = CommandToolBuilder(tool="length_normalise_counts.py_output_count", base_command=["length_normalise_counts.py", "output_count"], inputs=[ToolInput(tag="in_f", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="")), ToolInput(tag="in_length_normalise_counts_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_input_counts", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_count", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Length_Normalise_Counts_Py_Output_Count_V0_1_0().translate("wdl")

