from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, Int, String

Gamma_Py_V0_1_0 = CommandToolBuilder(tool="GAMMA.py", base_command=["GAMMA.py"], inputs=[ToolInput(tag="in_all", input_type=Boolean(optional=True), prefix="--all", doc=InputDocumentation(doc="include all gene matches, even overlaps")), ToolInput(tag="in_extended", input_type=Boolean(optional=True), prefix="--extended", doc=InputDocumentation(doc="writes out all protein mutations")), ToolInput(tag="in_fast_a", input_type=Boolean(optional=True), prefix="--fasta", doc=InputDocumentation(doc="write fasta of gene matches")), ToolInput(tag="in_gff", input_type=Boolean(optional=True), prefix="--gff", doc=InputDocumentation(doc="write gene matches as gff file")), ToolInput(tag="in_percent_identity", input_type=Int(optional=True), prefix="--percent_identity", doc=InputDocumentation(doc="minimum nucleotide identity for blat search (default =\n90)\n")), ToolInput(tag="in_input_fast_a", input_type=String(), position=0, doc=InputDocumentation(doc="input fasta")), ToolInput(tag="in_database", input_type=String(), position=1, doc=InputDocumentation(doc="input database")), ToolInput(tag="in_output", input_type=String(), position=2, doc=InputDocumentation(doc="output name"))], outputs=[], container="quay.io/biocontainers/gamma:1.1--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Gamma_Py_V0_1_0().translate("wdl")

