from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Fasta_Select_By_Keyword_Py_V0_1_0 = CommandToolBuilder(tool="fasta_select_by_keyword.py", base_command=["fasta_select_by_keyword.py"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="database file input")), ToolInput(tag="in_output", input_type=String(optional=True), prefix="--output", doc=InputDocumentation(doc="filtered fasta output")), ToolInput(tag="in_keyword", input_type=String(optional=True), prefix="--keyword", doc=InputDocumentation(doc="filter records to include keyword\n"))], outputs=[], container="quay.io/biocontainers/constax:2.0.6--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fasta_Select_By_Keyword_Py_V0_1_0().translate("wdl")

