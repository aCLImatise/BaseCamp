from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, String

Statisticreadsondnascontam_V0_1_0 = CommandToolBuilder(tool="StatisticReadsOnDNAsContam", base_command=["StatisticReadsOnDNAsContam"], inputs=[ToolInput(tag="in_input", input_type=File(optional=True), prefix="--input", doc=InputDocumentation(doc="Input files mapped to transcriptome with bam format.\n[required]")), ToolInput(tag="in_gtf_file", input_type=File(optional=True), prefix="--gtfFile", doc=InputDocumentation(doc="geome annotation file with gtf format.[required]")), ToolInput(tag="in_ot_put_prefix", input_type=String(optional=True), prefix="--otput_prefix", doc=InputDocumentation(doc="Prefix of output files.[required]\n"))], outputs=[], container="quay.io/biocontainers/ribominer:0.2.3.1--pyh3252c3a_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Statisticreadsondnascontam_V0_1_0().translate("wdl")

