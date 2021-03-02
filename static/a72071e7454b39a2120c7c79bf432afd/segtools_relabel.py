from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, String

Segtools_Relabel_V0_1_0 = CommandToolBuilder(tool="segtools_relabel", base_command=["segtools-relabel"], inputs=[ToolInput(tag="in_quiet", input_type=Boolean(optional=True), prefix="--quiet", doc=InputDocumentation(doc="Do not print diagnostic messages.")), ToolInput(tag="in_outfile", input_type=File(optional=True), prefix="--outfile", doc=InputDocumentation(doc="Save relabeled bed file to FILE instead of printing to\nstdout (default)\n")), ToolInput(tag="in_segmentation", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_mnemonic_file", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Segtools_Relabel_V0_1_0().translate("wdl", allow_empty_container=True)

