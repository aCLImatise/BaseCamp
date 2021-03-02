from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Float, Boolean, String

Wellington_Bootstrap_Py_V0_1_0 = CommandToolBuilder(tool="wellington_bootstrap.py", base_command=["wellington_bootstrap.py"], inputs=[ToolInput(tag="in_footprint_sizes", input_type=Int(optional=True), prefix="--footprint-sizes", doc=InputDocumentation(doc="Range of footprint sizes to try in format\n'from,to,step' (default: 11,26,2)")), ToolInput(tag="in_fdr_cut_off", input_type=Float(optional=True), prefix="--FDR_cutoff", doc=InputDocumentation(doc="Detect footprints using the FDR selection method at a\nspecific FDR (default: 0.01)")), ToolInput(tag="in_fdr_iterations", input_type=Int(optional=True), prefix="--FDR_iterations", doc=InputDocumentation(doc="How many randomisations to use when performing FDR\ncalculations (default: 100)")), ToolInput(tag="in_fdr_limit", input_type=Int(optional=True), prefix="--FDR_limit", doc=InputDocumentation(doc="Minimum p-value to be considered significant for FDR\ncalculation (default: -20)")), ToolInput(tag="in_processes", input_type=Int(optional=True), prefix="--processes", doc=InputDocumentation(doc="Number of processes to use (default: uses all CPUs)")), ToolInput(tag="in_atacseq_mode_default", input_type=Boolean(optional=True), prefix="-A", doc=InputDocumentation(doc="ATAC-seq mode (default: False)")), ToolInput(tag="in_treatment_bam", input_type=String(), position=0, doc=InputDocumentation(doc="BAM file for treatment")), ToolInput(tag="in_control_bam", input_type=String(), position=1, doc=InputDocumentation(doc="BAM file for control")), ToolInput(tag="in_bed_sites", input_type=String(), position=2, doc=InputDocumentation(doc="BED file of genomic locations to search in")), ToolInput(tag="in_treatment_only_output", input_type=String(), position=3, doc=InputDocumentation(doc="File to write treatment specific fooprints scores to")), ToolInput(tag="in_control_only_output", input_type=String(), position=4, doc=InputDocumentation(doc="File to write control specific footprint scores to"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Wellington_Bootstrap_Py_V0_1_0().translate("wdl", allow_empty_container=True)

