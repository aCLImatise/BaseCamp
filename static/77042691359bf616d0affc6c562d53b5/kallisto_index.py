from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Int, String

Kallisto_Index_V0_1_0 = CommandToolBuilder(tool="kallisto_index", base_command=["kallisto", "index"], inputs=[ToolInput(tag="in_index", input_type=File(optional=True), prefix="--index", doc=InputDocumentation(doc="Filename for the kallisto index to be constructed")), ToolInput(tag="in_km_er_size", input_type=Int(optional=True), prefix="--kmer-size", doc=InputDocumentation(doc="k-mer (odd) length (default: 31, max value: 31)\n--make-unique           Replace repeated target names with unique names\n")), ToolInput(tag="in_arguments", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_fast_a_files", input_type=String(), position=1, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Kallisto_Index_V0_1_0().translate("wdl", allow_empty_container=True)

