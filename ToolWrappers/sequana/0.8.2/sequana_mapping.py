from datetime import datetime
from typing import List, Optional, Dict, Any

from janis_core import *
from janis_core.types.common_data_types import File, Boolean, String

Sequana_Mapping_V0_1_0 = CommandToolBuilder(tool="sequana_mapping", base_command=["sequana_mapping"], inputs=[ToolInput(tag="in_file_one", input_type=File(optional=True), prefix="--file1", doc=InputDocumentation(doc="R1 fastq file (zipped)")), ToolInput(tag="in_file_two", input_type=File(optional=True), prefix="--file2", doc=InputDocumentation(doc="R2 fastq file (zipped)")), ToolInput(tag="in_pac_bio", input_type=Boolean(optional=True), prefix="--pacbio", doc=InputDocumentation(doc="specific pacbio parameters recommended by bwa mem are")), ToolInput(tag="in_reference", input_type=String(), position=0, doc=InputDocumentation(doc="--thread THREAD       number of threads")), ToolInput(tag="in_used", input_type=String(), position=1, doc=InputDocumentation(doc="--use-sambamba        use sambamba instead of samtools for the sorting"))], outputs=[], container=None, version="v0.1.0")


if __name__ == "__main__":
    # or "cwl"
    Sequana_Mapping_V0_1_0().translate("wdl", allow_empty_container=True)

