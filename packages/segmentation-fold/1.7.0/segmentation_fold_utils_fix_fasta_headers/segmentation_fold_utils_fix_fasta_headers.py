from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Segmentation_Fold_Utils_Fix_Fasta_Headers_V0_1_0 = CommandToolBuilder(tool="segmentation_fold_utils_fix_fasta_headers", base_command=["segmentation-fold-utils", "fix-fasta-headers"], inputs=[ToolInput(tag="in_fast_a_output_file", input_type=String(), position=0, doc=InputDocumentation(doc="Options:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segmentation_Fold_Utils_Fix_Fasta_Headers_V0_1_0().translate("wdl", allow_empty_container=True)

