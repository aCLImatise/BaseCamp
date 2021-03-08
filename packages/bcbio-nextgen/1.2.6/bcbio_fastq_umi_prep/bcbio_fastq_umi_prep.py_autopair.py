from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, Directory, String

Bcbio_Fastq_Umi_Prep_Py_Autopair_V0_1_0 = CommandToolBuilder(tool="bcbio_fastq_umi_prep.py_autopair", base_command=["bcbio_fastq_umi_prep.py", "autopair"], inputs=[ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores, allowing running samples in parallel")), ToolInput(tag="in_outdir", input_type=Directory(optional=True), prefix="--outdir", doc=InputDocumentation(doc="Output directory to write UMI prepped fastqs")), ToolInput(tag="in_tag_one", input_type=Int(optional=True), prefix="--tag1", doc=InputDocumentation(doc="Duplex read 1 tag -- bases to trim from 5' end")), ToolInput(tag="in_tag_two", input_type=Int(optional=True), prefix="--tag2", doc=InputDocumentation(doc="Duplex read 2 tag -- bases to trim from 5' end")), ToolInput(tag="in_files", input_type=String(), position=0, doc=InputDocumentation(doc="All fastq files to pair and process"))], outputs=[ToolOutput(tag="out_outdir", output_type=Directory(optional=True), selector=InputSelector(input_to_select="in_outdir", type_hint=File()), doc=OutputDocumentation(doc="Output directory to write UMI prepped fastqs"))], container="quay.io/biocontainers/bcbio-nextgen:1.2.6--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Fastq_Umi_Prep_Py_Autopair_V0_1_0().translate("wdl")

