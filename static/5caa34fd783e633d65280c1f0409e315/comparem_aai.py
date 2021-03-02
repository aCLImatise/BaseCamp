from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Float, Boolean, Int, String

Comparem_Aai_V0_1_0 = CommandToolBuilder(tool="comparem_aai", base_command=["comparem", "aai"], inputs=[ToolInput(tag="in_evalue", input_type=Float(optional=True), prefix="--evalue", doc=InputDocumentation(doc="maximum e-value for reporting an alignments (default:\n0.001)")), ToolInput(tag="in_per_identity", input_type=Float(optional=True), prefix="--per_identity", doc=InputDocumentation(doc="minimum percent identity for reporting an alignment\n(default: 30.0)")), ToolInput(tag="in_per_aln_len", input_type=Float(optional=True), prefix="--per_aln_len", doc=InputDocumentation(doc="minimum percent coverage of query sequence for\nreporting an alignment (default: 70.0)")), ToolInput(tag="in_keep_r_bhs", input_type=Boolean(optional=True), prefix="--keep_rbhs", doc=InputDocumentation(doc="create file with reciprocal best hits")), ToolInput(tag="in_cpus", input_type=Int(optional=True), prefix="--cpus", doc=InputDocumentation(doc="number of CPUs to use (default: 1)")), ToolInput(tag="in_silent", input_type=Boolean(optional=True), prefix="--silent", doc=InputDocumentation(doc="suppress output")), ToolInput(tag="in_query_gene_file", input_type=String(), position=0, doc=InputDocumentation(doc="file with all query genes")), ToolInput(tag="in_sorted_hit_table", input_type=String(), position=1, doc=InputDocumentation(doc="sorted file indicating genes passing sequence\nsimilarity criteria")), ToolInput(tag="in_output_dir", input_type=String(), position=2, doc=InputDocumentation(doc="output directory"))], outputs=[], container="quay.io/biocontainers/comparem:0.1.2--py_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Comparem_Aai_V0_1_0().translate("wdl")

