from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String

Alignmenttools_Compare_Error_Type_V0_1_0 = CommandToolBuilder(tool="AlignmentTools_compare_error_type", base_command=["AlignmentTools", "compare-error-type"], inputs=[ToolInput(tag="in_stem", input_type=String(optional=True), prefix="--stem", doc=InputDocumentation(doc="Output stem (default <query_nucl.fasta>)")), ToolInput(tag="in_compare_error_type", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_nucl", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Alignmenttools_Compare_Error_Type_V0_1_0().translate("wdl", allow_empty_container=True)

