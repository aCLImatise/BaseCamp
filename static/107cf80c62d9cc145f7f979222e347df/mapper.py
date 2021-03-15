from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Mapper_V0_1_0 = CommandToolBuilder(tool="mapper", base_command=["mapper"], inputs=[ToolInput(tag="in_name_coordinates_source", input_type=Int(optional=True), prefix="-f", doc=InputDocumentation(doc="Name and Coordinates of source contig, e.g. CONSENSUS:100-200")), ToolInput(tag="in_name_target_contig", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Name of target contig")), ToolInput(tag="in_coordinates_treated_based", input_type=Boolean(optional=True), prefix="-1", doc=InputDocumentation(doc="Whether coordinates should be treated 1-based")), ToolInput(tag="in_print_more_information", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Print more information (such as subsequences in references)")), ToolInput(tag="in_msa_file", input_type=String(), position=0, doc=InputDocumentation(doc="file containing MSA"))], outputs=[], container="quay.io/biocontainers/smallgenomeutilities:0.3.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Mapper_V0_1_0().translate("wdl")

