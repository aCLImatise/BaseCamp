from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Summarize_Sample_Gff_Junctions_Py_Output_Prefix_V0_1_0 = CommandToolBuilder(tool="summarize_sample_GFF_junctions.py_output_prefix", base_command=["summarize_sample_GFF_junctions.py", "output_prefix"], inputs=[ToolInput(tag="in_summarize_sample_gff_junctions_do_tpy", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_config", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_prefix", input_type=String(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Summarize_Sample_Gff_Junctions_Py_Output_Prefix_V0_1_0().translate("wdl", allow_empty_container=True)

