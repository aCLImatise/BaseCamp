from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Kinaminey_Shaker_V0_1_0 = CommandToolBuilder(tool="KinamineY_shaker", base_command=["KinamineY-shaker"], inputs=[ToolInput(tag="in_jar", input_type=String(optional=True), prefix="-jar", doc=InputDocumentation(doc="")), ToolInput(tag="in_java", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_protein_pilot_distinct_peptide_summary", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_fdr", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kinaminey_Shaker_V0_1_0().translate("wdl", allow_empty_container=True)

