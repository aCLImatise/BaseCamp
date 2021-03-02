from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File

Randfold_V0_1_0 = CommandToolBuilder(tool="randfold", base_command=["randfold"], inputs=[ToolInput(tag="in_mononucleotide_shuffling", input_type=String(optional=True), prefix="-s", doc=InputDocumentation(doc="mononucleotide shuffling")), ToolInput(tag="in_shuffling", input_type=String(optional=True), prefix="-d", doc=InputDocumentation(doc="shuffling")), ToolInput(tag="in_chain__shuffling", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="chain 1 shuffling")), ToolInput(tag="in_method", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_file_name", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_number_of_randomization_s", input_type=Int(), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Randfold_V0_1_0().translate("wdl", allow_empty_container=True)

