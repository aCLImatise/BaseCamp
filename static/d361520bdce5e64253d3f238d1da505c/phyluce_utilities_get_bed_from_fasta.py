from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Phyluce_Utilities_Get_Bed_From_Fasta_V0_1_0 = CommandToolBuilder(tool="phyluce_utilities_get_bed_from_fasta", base_command=["phyluce_utilities_get_bed_from_fasta"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="The fasta file to parse")), ToolInput(tag="in_output", input_type=File(optional=True), prefix="--output", doc=InputDocumentation(doc="The BED file to create")), ToolInput(tag="in_locus_prefix", input_type=String(optional=True), prefix="--locus-prefix", doc=InputDocumentation(doc="A prefix to add to each locus name\n"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Phyluce_Utilities_Get_Bed_From_Fasta_V0_1_0().translate("wdl", allow_empty_container=True)

