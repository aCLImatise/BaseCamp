from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bedtools_Bamtofastq_V0_1_0 = CommandToolBuilder(tool="bedtools_bamtofastq", base_command=["bedtools", "bamtofastq"], inputs=[ToolInput(tag="in_fq_two", input_type=Boolean(optional=True), prefix="-fq2", doc=InputDocumentation(doc="FASTQ for second end.  Used if BAM contains paired-end data.\nBAM should be sorted by query name is creating paired FASTQ.")), ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="-tags", doc=InputDocumentation(doc="Create FASTQ based on the mate info\nin the BAM R2 and Q2 tags.")), ToolInput(tag="in_fq", input_type=String(optional=True), prefix="-fq", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc="")), ToolInput(tag="in_bam_to_fast_q", input_type=String(), position=0, doc=InputDocumentation(doc=""))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bedtools_Bamtofastq_V0_1_0().translate("wdl", allow_empty_container=True)

