from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Int, String

Bcbio_Fastq_Umi_Prep_Py_Single_V0_1_0 = CommandToolBuilder(tool="bcbio_fastq_umi_prep.py_single", base_command=["bcbio_fastq_umi_prep.py", "single"], inputs=[ToolInput(tag="in_cores", input_type=Int(optional=True), prefix="--cores", doc=InputDocumentation(doc="Number of cores to use for parallel bgzip")), ToolInput(tag="in_tag_one", input_type=Int(optional=True), prefix="--tag1", doc=InputDocumentation(doc="Duplex read 1 tag -- bases to trim from 5' end")), ToolInput(tag="in_tag_two", input_type=Int(optional=True), prefix="--tag2", doc=InputDocumentation(doc="Duplex read 2 tag -- bases to trim from 5' end")), ToolInput(tag="in_out_base", input_type=String(), position=0, doc=InputDocumentation(doc="Base name for output files -- you get\n<base_name>_R1.fq.gz")), ToolInput(tag="in_read_one_fq", input_type=Int(), position=1, doc=InputDocumentation(doc="Input fastq, read 1")), ToolInput(tag="in_read_two_fq", input_type=Int(), position=2, doc=InputDocumentation(doc="Input fastq, read 2")), ToolInput(tag="in_umi_fq", input_type=String(), position=3, doc=InputDocumentation(doc="Input fastq, UMIs"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bcbio_Fastq_Umi_Prep_Py_Single_V0_1_0().translate("wdl", allow_empty_container=True)

