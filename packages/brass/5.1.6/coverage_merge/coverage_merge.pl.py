from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Coverage_Merge_Pl_V0_1_0 = CommandToolBuilder(tool="coverage_merge.pl", base_command=["coverage_merge.pl"], inputs=[ToolInput(tag="in_genome_dot_fa_dot_fai", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_sample_name", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_in_dir", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_include_list", input_type=String(), position=3, doc=InputDocumentation(doc="")), ToolInput(tag="in_at", input_type=String(), position=4, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Coverage_Merge_Pl_V0_1_0().translate("wdl", allow_empty_container=True)

