from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Tagcorpus_V0_1_0 = CommandToolBuilder(tool="tagcorpus", base_command=["tagcorpus"], inputs=[ToolInput(tag="in_documents", input_type=File(optional=True), prefix="--documents", doc=InputDocumentation(doc="Read input from file instead of from STDIN")), ToolInput(tag="in_type_pairs", input_type=File(optional=True), prefix="--type-pairs", doc=InputDocumentation(doc="Types of pairs that are allowed")), ToolInput(tag="in_autodetect", input_type=File(optional=True), prefix="--autodetect", doc=InputDocumentation(doc="autodetect on")), ToolInput(tag="in_tokenize_characters", input_type=String(optional=True), prefix="--tokenize-characters", doc=InputDocumentation(doc="single-character tokenization on"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Tagcorpus_V0_1_0().translate("wdl", allow_empty_container=True)

