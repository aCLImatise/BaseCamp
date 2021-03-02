from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Igdiscover_Errorplot_V0_1_0 = CommandToolBuilder(tool="igdiscover_errorplot", base_command=["igdiscover", "errorplot"], inputs=[ToolInput(tag="in_minimum_group_size", input_type=Int(optional=True), prefix="--minimum-group-size", doc=InputDocumentation(doc="Plot only genes with at least N assigned sequences.\nDefault: 0.1% of assigned sequences or 100, whichever\nis smaller.")), ToolInput(tag="in_max_j_shm", input_type=Int(optional=True), prefix="--max-j-shm", doc=InputDocumentation(doc="Use only rows with J%SHM >= VALUE")), ToolInput(tag="in_multi", input_type=File(optional=True), prefix="--multi", doc=InputDocumentation(doc="Plot individual error frequency histograms (for each V\ngene) to this PDF file")), ToolInput(tag="in_boxplot", input_type=String(optional=True), prefix="--boxplot", doc=InputDocumentation(doc="Plot a single page with box(en)plots of V SHM for\nmultiple genes\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Errorplot_V0_1_0().translate("wdl", allow_empty_container=True)

