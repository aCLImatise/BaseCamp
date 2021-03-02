from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Bam_Alignment_Qc_Py_V0_1_0 = CommandToolBuilder(tool="bam_alignment_qc.py", base_command=["bam_alignment_qc.py"], inputs=[ToolInput(tag="in_reference_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_bam_region_none", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="BAM region (None).")), ToolInput(tag="in_left_right_sizes", input_type=Int(optional=True), prefix="-n", doc=InputDocumentation(doc="Left and right context sizes (1,1).")), ToolInput(tag="in_plot_perreference_information", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Do not plot per-reference information.")), ToolInput(tag="in_dataset_tag_bam", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Dataset tag (BAM basename).")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_number_quality_intervals", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Number of quality intervals (6).")), ToolInput(tag="in_report_pdf_bamalignmentqcpdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_alignment_qc.pdf).")), ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file (bam_alignment_qc.pk).")), ToolInput(tag="in_be_quiet_show", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not show progress bars."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Alignment_Qc_Py_V0_1_0().translate("wdl")

