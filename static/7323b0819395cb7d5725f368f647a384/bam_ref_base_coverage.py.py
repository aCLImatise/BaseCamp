from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Bam_Ref_Base_Coverage_Py_V0_1_0 = CommandToolBuilder(tool="bam_ref_base_coverage.py", base_command=["bam_ref_base_coverage.py"], inputs=[ToolInput(tag="in_reference_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_bam_region_none", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="BAM region (None).")), ToolInput(tag="in_output_tab_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Output tab separated file (bam_ref_base_coverage.tsv).")), ToolInput(tag="in_minimum_base_coverage", input_type=Int(optional=True), prefix="-m", doc=InputDocumentation(doc="Minimum base coverage for a position to be counted (1).")), ToolInput(tag="in_be_quiet_show", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not show progress bars."))], outputs=[ToolOutput(tag="out_output_tab_file", output_type=File(optional=True), selector=InputSelector(input_to_select="in_output_tab_file", type_hint=File()), doc=OutputDocumentation(doc="Output tab separated file (bam_ref_base_coverage.tsv)."))], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Ref_Base_Coverage_Py_V0_1_0().translate("wdl", allow_empty_container=True)

