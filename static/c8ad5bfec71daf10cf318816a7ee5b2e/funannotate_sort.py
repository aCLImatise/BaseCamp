from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Funannotate_Sort_V0_1_0 = CommandToolBuilder(tool="funannotate_sort", base_command=["funannotate", "sort"], inputs=[ToolInput(tag="in_input", input_type=Boolean(optional=True), prefix="--input", doc=InputDocumentation(doc="Multi-fasta genome file. (Required)")), ToolInput(tag="in_out", input_type=Boolean(optional=True), prefix="--out", doc=InputDocumentation(doc="Sorted by size and relabeled output file. (Required)")), ToolInput(tag="in_base", input_type=Boolean(optional=True), prefix="--base", doc=InputDocumentation(doc="Base name to relabel contigs. Default: scaffold")), ToolInput(tag="in_min_len", input_type=Boolean(optional=True), prefix="--minlen", doc=InputDocumentation(doc="Shorter contigs are discarded. Default: 0")), ToolInput(tag="in_arguments", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/funannotate:1.8.5--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Funannotate_Sort_V0_1_0().translate("wdl")

