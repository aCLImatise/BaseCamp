from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean

Fastaexplod_V0_1_0 = CommandToolBuilder(tool="fastaexplod", base_command=["fastaexplod"], inputs=[ToolInput(tag="in_single_line", input_type=Boolean(optional=True), prefix="--singleline", doc=InputDocumentation(doc=": do not wrap sequence data lines")), ToolInput(tag="in_long_name", input_type=Boolean(optional=True), prefix="--longname", doc=InputDocumentation(doc=": do not shorten name")), ToolInput(tag="in_cols_length_default", input_type=Boolean(optional=True), prefix="-l", doc=InputDocumentation(doc="<cols>        : line length (default: 80)")), ToolInput(tag="in_data_only", input_type=Boolean(optional=True), prefix="--dataonly", doc=InputDocumentation(doc=": do not print FastA header (data only)")), ToolInput(tag="in_prefix_fasta_output", input_type=Boolean(optional=True), prefix="-p", doc=InputDocumentation(doc=": prefix for FastA output files (default: fasta_)"))], outputs=[], container="quay.io/biocontainers/biobambam:2.0.182--h7d875b9_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fastaexplod_V0_1_0().translate("wdl")

