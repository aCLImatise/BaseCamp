from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File

Riboraptor_Uniq_Mapping_Count_V0_1_0 = CommandToolBuilder(tool="riboraptor_uniq_mapping_count", base_command=["riboraptor", "uniq-mapping-count"], inputs=[ToolInput(tag="in_bam", input_type=File(optional=True), prefix="--bam", doc=InputDocumentation(doc="Path to BAM file  [required]"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Riboraptor_Uniq_Mapping_Count_V0_1_0().translate("wdl", allow_empty_container=True)

