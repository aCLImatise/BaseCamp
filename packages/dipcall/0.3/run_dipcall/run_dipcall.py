from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, File, Boolean, String

Run_Dipcall_V0_1_0 = CommandToolBuilder(tool="run_dipcall", base_command=["run-dipcall"], inputs=[ToolInput(tag="in_number_of_threads", input_type=Int(optional=True), prefix="-t", doc=InputDocumentation(doc="number of threads [8]")), ToolInput(tag="in_unimapminimap_index_reffa", input_type=File(optional=True), prefix="-d", doc=InputDocumentation(doc="unimap/minimap2 index for ref.fa []")), ToolInput(tag="in_par_chrx_assuming", input_type=File(optional=True), prefix="-x", doc=InputDocumentation(doc="PAR on chrX; assuming male")), ToolInput(tag="in_zdrop", input_type=Int(optional=True), prefix="-z", doc=InputDocumentation(doc="Z-drop [mapper default]")), ToolInput(tag="in_use_minimap_mapping", input_type=Boolean(optional=True), prefix="-m", doc=InputDocumentation(doc="use minimap2 for mapping (unimap by default)")), ToolInput(tag="in_repetitive_kmer_list", input_type=File(optional=True), prefix="-W", doc=InputDocumentation(doc="repetitive k-mer list; use winnowmap for mapping")), ToolInput(tag="in_more_options", input_type=Boolean(optional=True), prefix="-MORE_OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_options", input_type=Boolean(optional=True), prefix="-OPTIONS", doc=InputDocumentation(doc="")), ToolInput(tag="in_prefix", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_ref_dot_fa", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_pat_dot_fa", input_type=String(), position=2, doc=InputDocumentation(doc="")), ToolInput(tag="in_mat_dot_fa", input_type=String(), position=3, doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/dipcall:0.3--0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Run_Dipcall_V0_1_0().translate("wdl")

