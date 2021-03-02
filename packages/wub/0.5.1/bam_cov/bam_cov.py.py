from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import String, Int, Boolean

Bam_Cov_Py_V0_1_0 = CommandToolBuilder(tool="bam_cov.py", base_command=["bam_cov.py"], inputs=[ToolInput(tag="in_reference_fasta", input_type=String(optional=True), prefix="-f", doc=InputDocumentation(doc="Reference fasta.")), ToolInput(tag="in_bam_region_none", input_type=String(optional=True), prefix="-c", doc=InputDocumentation(doc="BAM region (None).")), ToolInput(tag="in_output_tsv_bamcovtsv", input_type=String(optional=True), prefix="-t", doc=InputDocumentation(doc="Output TSV (bam_cov.tsv).")), ToolInput(tag="in_minimum_alignment_quality", input_type=Int(optional=True), prefix="-q", doc=InputDocumentation(doc="Minimum alignment quality (0).")), ToolInput(tag="in_be_quiet_show", input_type=Boolean(optional=True), prefix="-Q", doc=InputDocumentation(doc="Be quiet and do not show progress bars.")), ToolInput(tag="in_bam", input_type=String(), position=0, doc=InputDocumentation(doc="Input BAM file."))], outputs=[], container="quay.io/biocontainers/wub:0.5.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bam_Cov_Py_V0_1_0().translate("wdl")

