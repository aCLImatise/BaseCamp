from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Float, String

Filter_Gff_Sequence_V0_1_0 = CommandToolBuilder(tool="filter_gff_sequence", base_command=["filter-gff", "sequence"], inputs=[ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="If the GFF file is sorted (all of a sequence\nannotations are contiguos) can use less\nmemory, `sort -s -k 1,1` can be used")), ToolInput(tag="in_attribute", input_type=Boolean(optional=True), prefix="--attribute", doc=InputDocumentation(doc="[evalue|bitscore|identity|length]\nAttribute on which to apply the filter\n[default: bitscore]")), ToolInput(tag="in_function", input_type=Boolean(optional=True), prefix="--function", doc=InputDocumentation(doc="[mean|median|quantile|std|max|min]\nFunction for filtering  [default: mean]")), ToolInput(tag="in_value", input_type=Float(optional=True), prefix="--value", doc=InputDocumentation(doc="Value for the function (used for *std* and\n*quantile*)")), ToolInput(tag="in_comparison", input_type=Boolean(optional=True), prefix="--comparison", doc=InputDocumentation(doc="[gt|ge|lt|le]  Type of comparison (e.g. ge -> greater than\nor equal to)  [default: ge]")), ToolInput(tag="in_progress", input_type=Boolean(optional=True), prefix="--progress", doc=InputDocumentation(doc="Shows Progress Bar")), ToolInput(tag="in_input_file", input_type=String(optional=True), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_file", input_type=String(optional=True), position=1, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/mgkit:0.5.6--py37hf01694f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Filter_Gff_Sequence_V0_1_0().translate("wdl")

