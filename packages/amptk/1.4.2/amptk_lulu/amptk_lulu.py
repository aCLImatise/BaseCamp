from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Amptk_Lulu_V0_1_0 = CommandToolBuilder(tool="amptk_lulu", base_command=["amptk", "lulu"], inputs=[ToolInput(tag="in_otu_table", input_type=Boolean(optional=True), prefix="--otu_table", doc=InputDocumentation(doc="Input OTU table (Required)")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="Input OTUs in FASTA format (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Output base name. Default: input basename")), ToolInput(tag="in_min_ratio_type", input_type=Boolean(optional=True), prefix="--min_ratio_type", doc=InputDocumentation(doc="Minimum ratio threshold. Default: min [min,avg]")), ToolInput(tag="in_min_ratio", input_type=Boolean(optional=True), prefix="--min_ratio", doc=InputDocumentation(doc="Minimum ratio. Default: 1")), ToolInput(tag="in_min_match", input_type=Boolean(optional=True), prefix="--min_match", doc=InputDocumentation(doc="Minimum match pident (%%). Default: 84")), ToolInput(tag="in_min_relative_co_occurence", input_type=Int(optional=True), prefix="--min_relative_cooccurence", doc=InputDocumentation(doc="relative co-occurance (%%): Default: 95")), ToolInput(tag="in_debug", input_type=Boolean(optional=True), prefix="--debug", doc=InputDocumentation(doc="Keep intermediate files.")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Amptk_Lulu_V0_1_0().translate("wdl", allow_empty_container=True)

