from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Match_W_Annotation_Py_V0_1_0 = CommandToolBuilder(tool="match_w_annotation.py", base_command=["match_w_annotation.py"], inputs=[ToolInput(tag="in_min_query_overlap", input_type=Int(optional=True), prefix="--min_query_overlap", doc=InputDocumentation(doc="Minimum query overlap, in ratio (default: 0.0)")), ToolInput(tag="in_min_gene_overlap_bp", input_type=Int(optional=True), prefix="--min_gene_overlap_bp", doc=InputDocumentation(doc="Minimum gene overlap, in bp (default: 0 bp)")), ToolInput(tag="in_min_gene_overlap", input_type=Int(optional=True), prefix="--min_gene_overlap", doc=InputDocumentation(doc="Minimum gene overlap, in ratio (default: 0.5)\n")), ToolInput(tag="in_gene_annotation_file", input_type=String(), position=0, doc=InputDocumentation(doc="Gene Annotation Text File")), ToolInput(tag="in_input_fast_a", input_type=String(), position=1, doc=InputDocumentation(doc="Input Fasta")), ToolInput(tag="in_input_sam", input_type=String(), position=2, doc=InputDocumentation(doc="Input SAM")), ToolInput(tag="in_output_prefix", input_type=String(), position=3, doc=InputDocumentation(doc="Output Prefix"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Match_W_Annotation_Py_V0_1_0().translate("wdl", allow_empty_container=True)

