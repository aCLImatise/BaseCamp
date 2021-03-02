from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Bioformats_Flanknfilter_V0_1_0 = CommandToolBuilder(tool="bioformats_flanknfilter", base_command=["bioformats", "flanknfilter"], inputs=[ToolInput(tag="in_type", input_type=String(optional=True), prefix="--type", doc=InputDocumentation(doc="the input file type (default: bed)")), ToolInput(tag="in_length", input_type=Int(optional=True), prefix="--length", doc=InputDocumentation(doc="the flanking region length (default: 100)")), ToolInput(tag="in_strict", input_type=Boolean(optional=True), prefix="--strict", doc=InputDocumentation(doc="require flanks to have exactly the specified length\n(it may be shorter if a feature is located near a\nsequence start or end) (default: False)\n")), ToolInput(tag="in_v", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="")), ToolInput(tag="in_input_file", input_type=String(), position=0, doc=InputDocumentation(doc="an input file of features to be filtered")), ToolInput(tag="in_fast_a_file", input_type=String(), position=1, doc=InputDocumentation(doc="a FASTA file of sequences the features are related to")), ToolInput(tag="in_output_file", input_type=String(), position=2, doc=InputDocumentation(doc="an output file of filtered features"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bioformats_Flanknfilter_V0_1_0().translate("wdl", allow_empty_container=True)

