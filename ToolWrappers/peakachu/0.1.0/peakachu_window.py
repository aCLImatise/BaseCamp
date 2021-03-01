from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Array, String, Int

Peakachu_Window_V0_1_0 = CommandToolBuilder(tool="peakachu_window", base_command=["peakachu", "window"], inputs=[ToolInput(tag="in_pairwise_replicates", input_type=Array(t=String(), optional=True), prefix="--pairwise_replicates", doc=InputDocumentation(doc="[FEATURES [FEATURES ...]]")), ToolInput(tag="in_window_size", input_type=Int(optional=True), prefix="--window_size", doc=InputDocumentation(doc="[SIZE_FACTORS [SIZE_FACTORS ...]], --size_factors [SIZE_FACTORS [SIZE_FACTORS ...]]\nNormalization factors for libraries in input order\n(first experiment then control libraries)"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Peakachu_Window_V0_1_0().translate("wdl", allow_empty_container=True)

