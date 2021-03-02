from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Boolean, Int, File

Igdiscover_Dereplicate_V0_1_0 = CommandToolBuilder(tool="igdiscover_dereplicate", base_command=["igdiscover", "dereplicate"], inputs=[ToolInput(tag="in_limit", input_type=String(optional=True), prefix="--limit", doc=InputDocumentation(doc="Limit processing to the first N reads")), ToolInput(tag="in_trim_g", input_type=Boolean(optional=True), prefix="--trim-g", doc=InputDocumentation(doc="Trim 'G' nucleotides at 5' end")), ToolInput(tag="in_minimum_length", input_type=Int(optional=True), prefix="--minimum-length", doc=InputDocumentation(doc="Minimum sequence length")), ToolInput(tag="in_barcode_length", input_type=Int(optional=True), prefix="--barcode-length", doc=InputDocumentation(doc="Length of barcode. Positive for 5' barcode, negative\nfor 3' barcode. Default: 0")), ToolInput(tag="in_json", input_type=File(optional=True), prefix="--json", doc=InputDocumentation(doc="Write statistics to FILE")), ToolInput(tag="in_sequences", input_type=String(), position=0, doc=InputDocumentation(doc="optional arguments:"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Igdiscover_Dereplicate_V0_1_0().translate("wdl", allow_empty_container=True)

