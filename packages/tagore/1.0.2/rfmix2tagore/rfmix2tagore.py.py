from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Rfmix2Tagore_Py_V0_1_0 = CommandToolBuilder(tool="rfmix2tagore.py", base_command=["rfmix2tagore.py"], inputs=[ToolInput(tag="in_chr_one", input_type=File(optional=True), prefix="--chr1", doc=InputDocumentation(doc="Chromosome 1 RFMix painting")), ToolInput(tag="in_chr_two", input_type=File(optional=True), prefix="--chr2", doc=InputDocumentation(doc="Chromosome 2 RFMix painting")), ToolInput(tag="in_afr", input_type=String(optional=True), prefix="--afr", doc=InputDocumentation(doc="Color for African blocks")), ToolInput(tag="in_eur", input_type=String(optional=True), prefix="--eur", doc=InputDocumentation(doc="Color for European blocks")), ToolInput(tag="in_nat", input_type=String(optional=True), prefix="--nat", doc=InputDocumentation(doc="Color for Native American / Asian blocks")), ToolInput(tag="in_unk", input_type=String(optional=True), prefix="--unk", doc=InputDocumentation(doc="Color for Unknown regions")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="Output da Vinci bed"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Rfmix2Tagore_Py_V0_1_0().translate("wdl", allow_empty_container=True)

