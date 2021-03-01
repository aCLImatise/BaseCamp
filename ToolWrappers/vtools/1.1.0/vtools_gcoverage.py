from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean

Vtools_Gcoverage_V0_1_0 = CommandToolBuilder(tool="vtools_gcoverage", base_command=["vtools-gcoverage"], inputs=[ToolInput(tag="in_input_gvc_f", input_type=File(optional=True), prefix="--input-gvcf", doc=InputDocumentation(doc="Path to input VCF file  [required]")), ToolInput(tag="in_ref_flat_file", input_type=File(optional=True), prefix="--refflat-file", doc=InputDocumentation(doc="Path to refFlat file  [required]")), ToolInput(tag="in_per_transcript", input_type=Boolean(optional=True), prefix="--per-transcript", doc=InputDocumentation(doc="Collect metrics per exon or per transcript"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Vtools_Gcoverage_V0_1_0().translate("wdl", allow_empty_container=True)

