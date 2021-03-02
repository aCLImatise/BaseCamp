from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean, File

Bam_Frag_Coverage_Py_V0_1_0 = CommandToolBuilder(tool="bam_frag_coverage.py", base_command=["bam_frag_coverage.py"], inputs=[ToolInput(tag="in_reference_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_bam_region_none", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="BAM region (None).")), ToolInput(tag="in_length_intervals_", input_type=Int(optional=True), prefix="-i", doc=InputDocumentation(doc="Length intervals ().")), ToolInput(tag="in_number_bins_none", input_type=Int(optional=True), prefix="-b", doc=InputDocumentation(doc="Number of bins (None = auto).")), ToolInput(tag="in_plot_perreference_information", input_type=Boolean(optional=True), prefix="-x", doc=InputDocumentation(doc="Plot per-reference information.")), ToolInput(tag="in_take_log_coverage", input_type=Boolean(optional=True), prefix="-o", doc=InputDocumentation(doc="Do not take log of coverage.")), ToolInput(tag="in_dataset_tag_bam", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Dataset tag (BAM basename).")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_tab_separated_file_cov", input_type=Int(optional=True), prefix="-l", doc=InputDocumentation(doc="Tab separated file with per-chromosome cov80 scores\n(None). Requires the -x option to be specified.")), ToolInput(tag="in_tab_separated_file_none", input_type=Int(optional=True), prefix="-g", doc=InputDocumentation(doc="Tab separated file with global cov80 score (None).")), ToolInput(tag="in_report_pdf_bamfragcoveragepdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_frag_coverage.pdf).")), ToolInput(tag="in_save_pickled_results", input_type=File(optional=True), prefix="-p", doc=InputDocumentation(doc="Save pickled results in this file (None).")), ToolInput(tag="in_be_quiet_show", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not show progress bars."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Frag_Coverage_Py_V0_1_0().translate("wdl")

