from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Boolean, String, File

Bam_Alignments_Compare_Py_V0_1_0 = CommandToolBuilder(tool="bam_alignments_compare.py", base_command=["bam_alignments_compare.py"], inputs=[ToolInput(tag="in_tolerance_when_performing", input_type=Int(optional=True), prefix="-w", doc=InputDocumentation(doc="Tolerance when performing coarse comparison of\nalignments (50).")), ToolInput(tag="in_do_strict_comparison", input_type=Boolean(optional=True), prefix="-g", doc=InputDocumentation(doc="Do strict comparison of alignment flags.")), ToolInput(tag="in_report_pdf_bamalignmentscomparepdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_alignments_compare.pdf).")), ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file\n(bam_alignments_compare.pk).")), ToolInput(tag="in_save_results_none", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Save results in tsv format in this file (None).")), ToolInput(tag="in_input_format_bam", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Input format (BAM).")), ToolInput(tag="in_be_quiet_print", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not print progress bar (False).")), ToolInput(tag="in_bam_one", input_type=String(), position=0, doc=InputDocumentation(doc="First input BAM file.")), ToolInput(tag="in_bam_two", input_type=String(), position=1, doc=InputDocumentation(doc="Second input BAM file."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Alignments_Compare_Py_V0_1_0().translate("wdl", allow_empty_container=True)

