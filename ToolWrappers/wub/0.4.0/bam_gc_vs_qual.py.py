from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, File, Boolean

Bam_Gc_Vs_Qual_Py_V0_1_0 = CommandToolBuilder(tool="bam_gc_vs_qual.py", base_command=["bam_gc_vs_qual.py"], inputs=[ToolInput(tag="in_reference_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_report_pdf_bamgcvsqualpdf", input_type=String(optional=True), prefix="-r", doc=InputDocumentation(doc="Report PDF (bam_gc_vs_qual.pdf).")), ToolInput(tag="in_tab_separated_file", input_type=File(optional=True), prefix="-t", doc=InputDocumentation(doc="Tab separated file to save results (bam_gc_vs_qual.tsv).")), ToolInput(tag="in_be_quiet_show", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not show progress bars."))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Gc_Vs_Qual_Py_V0_1_0().translate("wdl", allow_empty_container=True)

