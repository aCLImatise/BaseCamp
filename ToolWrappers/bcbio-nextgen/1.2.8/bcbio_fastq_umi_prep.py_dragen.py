from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Directory, String

Bcbio_Fastq_Umi_Prep_Py_Dragen_V0_1_0 = CommandToolBuilder(tool="bcbio_fastq_umi_prep.py_dragen", base_command=["bcbio_fastq_umi_prep.py", "dragen"], inputs=[ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory to write UMI prepped fastqs")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="All fastq files to pair and process"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory to write UMI prepped fastqs"))], container="quay.io/biocontainers/bcbio-nextgen:1.2.8--pyh5e36f6f_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Fastq_Umi_Prep_Py_Dragen_V0_1_0().translate("wdl")

