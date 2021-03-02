from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, String

Expressionfromgenomicset_Py_V0_1_0 = CommandToolBuilder(tool="expressionFromGenomicSet.py", base_command=["expressionFromGenomicSet.py"], inputs=[ToolInput(tag="in_dist", input_type=Int(optional=True), prefix="--dist", doc=InputDocumentation(doc="threshDist of GenomicReginSet.filter_by_gene_association_old.\n[default: 50000]\n")), ToolInput(tag="in_experimental_matrix_file", input_type=File(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_gene_expression_file", input_type=File(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_annotation_path", input_type=File(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_output_dir", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Expressionfromgenomicset_Py_V0_1_0().translate("wdl", allow_empty_container=True)

