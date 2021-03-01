from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Clinvar_Tsv_Inspect_V0_1_0 = CommandToolBuilder(tool="clinvar_tsv_inspect", base_command=["clinvar_tsv", "inspect"], inputs=[ToolInput(tag="in_work_dir", input_type=File(optional=True), prefix="--work-dir", doc=InputDocumentation(doc="Path to working directory")), ToolInput(tag="in_clin_var_tsv", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_inspect", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Clinvar_Tsv_Inspect_V0_1_0().translate("wdl", allow_empty_container=True)

