from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, File, Int, Boolean

Bam_Accuracy_Py_V0_1_0 = CommandToolBuilder(tool="bam_accuracy.py", base_command=["bam_accuracy.py"], inputs=[ToolInput(tag="in_bam_region_none", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="BAM region (None).")), ToolInput(tag="in_tab_separated_file_save_global_statistics", input_type=File(optional=True), prefix="-g", doc=InputDocumentation(doc="Tab separated file to save global statistics (None).")), ToolInput(tag="in_tab_separated_file_save_perread_statistics", input_type=File(optional=True), prefix="-l", doc=InputDocumentation(doc="Tab separated file to save per-read statistics (None).")), ToolInput(tag="in_dataset_tag_bam", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Dataset tag (BAM basename).")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_include_hard_clipps", input_type=Boolean(optional=True), prefix="-e", doc=InputDocumentation(doc="Include hard and soft clipps in alignment length when\ncalculating accuracy (False).")), ToolInput(tag="in_report_pdf_bamaccuracypdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_accuracy.pdf).")), ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file (None).")), ToolInput(tag="in_be_quiet_print", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not print progress bar (False)."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Accuracy_Py_V0_1_0().translate("wdl")

