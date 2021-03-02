from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Tradis_Plot_V0_1_0 = CommandToolBuilder(tool="tradis_plot", base_command=["tradis_plot"], inputs=[ToolInput(tag="in_mapped_bam_file", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc=": mapped, sorted bam file")), ToolInput(tag="in_mapping_quality_be", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc=": mapping quality must be greater than X (optional. default: 30)")), ToolInput(tag="in_output_base_name", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc=": output base name for plot (optional. default: tradis.plot)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tradis_Plot_V0_1_0().translate("wdl", allow_empty_container=True)

