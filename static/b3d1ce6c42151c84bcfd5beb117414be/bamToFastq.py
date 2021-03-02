from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import Boolean, String

Bamtofastq_V0_1_0 = CommandToolBuilder(tool="bamToFastq", base_command=["bamToFastq"], inputs=[ToolInput(tag="in_fq_two", input_type=Boolean(optional=True), prefix="-fq2", doc=InputDocumentation(doc="FASTQ for second end.  Used if BAM contains paired-end data.\nBAM should be sorted by query name is creating paired FASTQ.")), ToolInput(tag="in_tags", input_type=Boolean(optional=True), prefix="-tags", doc=InputDocumentation(doc="Create FASTQ based on the mate info\nin the BAM R2 and Q2 tags.")), ToolInput(tag="in_fq", input_type=String(optional=True), prefix="-fq", doc=InputDocumentation(doc="")), ToolInput(tag="in_i", input_type=String(optional=True), prefix="-i", doc=InputDocumentation(doc=""))], outputs=[], container="quay.io/biocontainers/bedtools:2.30.0--hc088bd4_0", version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Bamtofastq_V0_1_0().translate("wdl")

