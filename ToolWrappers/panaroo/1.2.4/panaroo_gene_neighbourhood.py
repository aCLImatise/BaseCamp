from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File

Panaroo_Gene_Neighbourhood_V0_1_0 = CommandToolBuilder(tool="panaroo_gene_neighbourhood", base_command=["panaroo-gene-neighbourhood"], inputs=[ToolInput(tag="in_graph", input_type=String(optional=True), prefix="--graph", doc=InputDocumentation(doc="[--expand_no EXPAND_NO]")), ToolInput(tag="in_gene", input_type=String(optional=True), prefix="--gene", doc=InputDocumentation(doc="gene of interest")), ToolInput(tag="in_genome_id", input_type=String(optional=True), prefix="--genome_id", doc=InputDocumentation(doc="genome ID of interest (default=ALL)")), ToolInput(tag="in_expand_no", input_type=File(optional=True), prefix="--expand_no", doc=InputDocumentation(doc="lengths of the path that will be expanded on in a\nradius the target gene (default=5)")), ToolInput(tag="in_out", input_type=File(optional=True), prefix="--out", doc=InputDocumentation(doc="output file"))], outputs=[ToolOutput(tag="out_out", output_type=File(optional=True), selector=InputSelector(input_to_select="in_out", type_hint=File()), doc=OutputDocumentation(doc="output file"))], container="quay.io/biocontainers/panaroo:1.2.4--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Panaroo_Gene_Neighbourhood_V0_1_0().translate("wdl")

