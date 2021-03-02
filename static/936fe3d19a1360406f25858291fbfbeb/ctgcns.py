from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, Int, String

Ctgcns_V0_1_0 = CommandToolBuilder(tool="ctgcns", base_command=["ctgcns"], inputs=[ToolInput(tag="in_test_computation_contig", input_type=File(optional=True), prefix="-T", doc=InputDocumentation(doc="Test the computation of the contig layout in 'file'")), ToolInput(tag="in_recompute_contigs_have", input_type=Boolean(optional=True), prefix="-f", doc=InputDocumentation(doc="Recompute contigs that already have a multialignment")), ToolInput(tag="in_reuse_unitig_consensus", input_type=Boolean(optional=True), prefix="-U", doc=InputDocumentation(doc="Reuse the unitig consensus for contigs with only a single\nunitig (EXPERIMENTAL!)")), ToolInput(tag="in_update_tigstore_dump", input_type=File(optional=True), prefix="-O", doc=InputDocumentation(doc="Don't update tigStore, dump a binary file instead.")), ToolInput(tag="in_import_binary_file", input_type=File(optional=True), prefix="-I", doc=InputDocumentation(doc="Import binary file into tigStore")), ToolInput(tag="in_show_multialigns", input_type=Boolean(optional=True), prefix="-v", doc=InputDocumentation(doc="Show multialigns.")), ToolInput(tag="in_enable_debugging_option", input_type=Boolean(optional=True), prefix="-V", doc=InputDocumentation(doc="Enable debugging option 'verbosemultialign'.")), ToolInput(tag="in_smoothing_window_size", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Smoothing window size")), ToolInput(tag="in_var_8", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="")), ToolInput(tag="in_g", input_type=String(optional=True), prefix="-g", doc=InputDocumentation(doc="")), ToolInput(tag="in_version", input_type=String(), position=0, doc=InputDocumentation(doc="")), ToolInput(tag="in_partition", input_type=String(), position=1, doc=InputDocumentation(doc="")), ToolInput(tag="in_opts", input_type=String(optional=True), position=2, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Ctgcns_V0_1_0().translate("wdl", allow_empty_container=True)

