from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Merfishtools_Gen_Mhd2_V0_1_0 = CommandToolBuilder(tool="merfishtools_gen_mhd2", base_command=["merfishtools", "gen-mhd2"], inputs=[ToolInput(tag="in_bits", input_type=Int(optional=True), prefix="--bits", doc=InputDocumentation(doc="Number of bits.")), ToolInput(tag="in_one_bits", input_type=Int(optional=True), prefix="--onebits", doc=InputDocumentation(doc="Number of 1-bits.")), ToolInput(tag="in_not_expressed", input_type=String(optional=True), prefix="--not-expressed", doc=InputDocumentation(doc="Regular expression pattern for features that should be marked\nas not expressed. This is useful to correctly model, e.g.,\nmisidentification probes."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Merfishtools_Gen_Mhd2_V0_1_0().translate("wdl", allow_empty_container=True)

