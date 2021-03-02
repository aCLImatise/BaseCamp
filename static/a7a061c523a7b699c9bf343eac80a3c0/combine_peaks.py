from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, File, Int, String

Combine_Peaks_V0_1_0 = CommandToolBuilder(tool="combine_peaks", base_command=["combine_peaks"], inputs=[ToolInput(tag="in_macs_summit_files", input_type=Boolean(optional=True), prefix="-i", doc=InputDocumentation(doc="[FNAME [FNAME ...]], --input [FNAME [FNAME ...]]\nMACS2 summit or narrowPeak files")), ToolInput(tag="in_genome", input_type=File(optional=True), prefix="--genome", doc=InputDocumentation(doc="Genome name or genome file")), ToolInput(tag="in_window", input_type=Int(optional=True), prefix="--window", doc=InputDocumentation(doc="Window size (default 200)")), ToolInput(tag="in_scale", input_type=Boolean(optional=True), prefix="--scale", doc=InputDocumentation(doc="Scale summit values")), ToolInput(tag="in_fname", input_type=String(optional=True), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Combine_Peaks_V0_1_0().translate("wdl", allow_empty_container=True)

