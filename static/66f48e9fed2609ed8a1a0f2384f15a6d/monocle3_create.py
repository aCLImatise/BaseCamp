from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String

Monocle3_Create_V0_1_0 = CommandToolBuilder(tool="monocle3_create", base_command=["monocle3", "create"], inputs=[ToolInput(tag="in_output_object_format", input_type=Int(optional=True), prefix="--output-object-format", doc=InputDocumentation(doc="Format of output object. [Default: cds3]")), ToolInput(tag="in_introspective", input_type=Boolean(optional=True), prefix="--introspective", doc=InputDocumentation(doc="Print introspective information of the output object.")), ToolInput(tag="in_expression_matrix", input_type=String(optional=True), prefix="--expression-matrix", doc=InputDocumentation(doc="Expression matrix, genes as rows, cells as columns. Required input.  Provide as TSV, CSV, RDS or MTX. In the case of MTX, requires both --cell-metadata and --gene-annotation.")), ToolInput(tag="in_cell_metadata", input_type=String(optional=True), prefix="--cell-metadata", doc=InputDocumentation(doc="Per-cell annotation, optional unless expression as MTX. Row names must match the column names of the expression matrix. Provide as TSV, CSV or RDS.")), ToolInput(tag="in_gene_annotation", input_type=String(optional=True), prefix="--gene-annotation", doc=InputDocumentation(doc="Per-gene annotation, optional unless expression as MTX. Row names must match the row names of the expression matrix. Provide as TSV, CSV or RDS.")), ToolInput(tag="in_verbose", input_type=Boolean(optional=True), prefix="--verbose", doc=InputDocumentation(doc="Emit verbose output.")), ToolInput(tag="in_output_object", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Monocle3_Create_V0_1_0().translate("wdl", allow_empty_container=True)

