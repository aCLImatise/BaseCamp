from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String, Boolean

Singlecellrnaseqmetricscollector_V0_1_0 = CommandToolBuilder(tool="SingleCellRnaSeqMetricsCollector", base_command=["SingleCellRnaSeqMetricsCollector"], inputs=[ToolInput(tag="in_default_g", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="(default 4g)")), ToolInput(tag="in_final_command_line", input_type=String(optional=True), prefix="-v", doc=InputDocumentation(doc="final command line before executing")), ToolInput(tag="in_std_help", input_type=Boolean(optional=True), prefix="--stdhelp", doc=InputDocumentation(doc="Displays options specific to this tool AND options common to all Picard command line\ntools.")), ToolInput(tag="in_null_dot", input_type=String(), position=0, doc=InputDocumentation(doc="STRAND_SPECIFICITY=StrandSpecificity")), ToolInput(tag="in_cell_bc_file", input_type=String(), position=0, doc=InputDocumentation(doc="CELL_BC_FILE=File             Override NUM_CORE_BARCODES, and process reads that have the cell barcodes in this file")), ToolInput(tag="in_instead_dot", input_type=String(), position=1, doc=InputDocumentation(doc="When supplied, output is ordered to match the input barcode ordering. The file")), ToolInput(tag="in_num_core_barcodes", input_type=String(), position=0, doc=InputDocumentation(doc="READ_MQ=Integer               The map quality of the read to be included for determining which cells will be measured. "))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Singlecellrnaseqmetricscollector_V0_1_0().translate("wdl", allow_empty_container=True)

