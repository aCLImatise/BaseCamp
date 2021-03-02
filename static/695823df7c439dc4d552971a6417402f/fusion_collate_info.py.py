from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String, Int, Boolean

Fusion_Collate_Info_Py_V0_1_0 = CommandToolBuilder(tool="fusion_collate_info.py", base_command=["fusion_collate_info.py"], inputs=[ToolInput(tag="in_cds_gff", input_type=File(optional=True), prefix="--cds_gff", doc=InputDocumentation(doc="CDS GFF filename (optional)")), ToolInput(tag="in_total_fl_count", input_type=String(optional=True), prefix="--total_fl_count", doc=InputDocumentation(doc="(optional) Total FL count used to normalize fusion\ncounts")), ToolInput(tag="in_config", input_type=String(optional=True), prefix="--config", doc=InputDocumentation(doc="(optional) Additional information to include in the")), ToolInput(tag="in_min_fl_count", input_type=Int(optional=True), prefix="--min_fl_count", doc=InputDocumentation(doc="Minimum FL count (default: 2)")), ToolInput(tag="in_min_breakpoint_dist_kb", input_type=Int(optional=True), prefix="--min_breakpoint_dist_kb", doc=InputDocumentation(doc="Minimum breakpoint distance, in kb (default: 10[kb])")), ToolInput(tag="in_include_mt_genes", input_type=Boolean(optional=True), prefix="--include_Mt_genes", doc=InputDocumentation(doc="Include Mt genes (default: off)")), ToolInput(tag="in_fusion_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="Prefix for fusion files (ex: my.fusion)")), ToolInput(tag="in_class_filename", input_type=String(), position=1, doc=InputDocumentation(doc="SQANTI3 classification filename")), ToolInput(tag="in_gene_pred_filename", input_type=String(), position=2, doc=InputDocumentation(doc="GenePred filename used by SQANTI3 classification")), ToolInput(tag="in_output", input_type=String(), position=0, doc=InputDocumentation(doc="--genome GENOME       (optional) Reference genome"))], outputs=[], container="quay.io/biocontainers/cdna_cupcake:19.0.0--py37h97743b1_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Fusion_Collate_Info_Py_V0_1_0().translate("wdl")

